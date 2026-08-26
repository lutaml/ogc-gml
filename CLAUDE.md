# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Ruby gem for parsing and generating OGC GML 3.2 (Geography Markup Language) data. It provides Ruby objects that map to GML schema elements, using the `lutaml-model` library for XML serialization/deserialization.

GML 3.1.1 documents are NOT parsed by these models (different namespace and schema). Multi-version support is planned on lutaml-model's register system (namespace-bound contexts per version, the plurimath/mml pattern); the i-UR 3.1.1 fixtures are skipped in specs until the gml_31 register mappings are generated.

## Commands

```bash
# Install dependencies (includes git submodule initialization)
git submodule update --init --recursive
bundle install

# Run all tests
bundle exec rake spec
# or
bundle exec rspec

# Run a single test file
bundle exec rspec spec/ogc/gml/point_spec.rb

# Run a specific test
bundle exec rspec spec/ogc/gml/point_spec.rb:18

# Run linter
bundle exec rubocop

# Run linter with auto-fix
bundle exec rubocop -A

# Run default task (tests + linting)
bundle exec rake

# Start interactive console
bin/console
```

## Architecture

The codebase follows a consistent pattern where each GML element is represented by a Ruby class:

- **Location**: All model classes are in `lib/ogc/gml/` with one class per file
- **Entry point**: `lib/ogc/gml.rb` registers `autoload` entries for every class; there is no `require_relative` graph (removing it fixed the circular-require warnings of issue #21). Never add `require_relative` for internal library code — add an autoload entry in `lib/ogc/gml.rb`.
- **One class per file, opened first**: mutually recursive schema types rely on the class keyword executing before any cyclic constant reference. Do not embed duplicate or stub class definitions in other files (the old cycle-dodge shells broke autoload resolution).
- **Namespace**: `lib/ogc/gml/namespace.rb` aliases `Namespace = Gml32Namespace`; the version namespace classes live in `lib/ogc/gml/namespaces/`

### Class Hierarchy

Classes inherit from abstract base classes that mirror the GML schema:

```
Lutaml::Model::Serializable
└── AbstractGml
    ├── AbstractFeature (features, collections)
    ├── AbstractGeometry ← AbstractGeometricPrimitive
    │   ├── Point, LineString, Curve, Surface, Solid, etc.
    │   └── Multi* aggregate types
    ├── AbstractCRS (coordinate reference systems)
    ├── AbstractDatum, AbstractCoordinateSystem
    └── AbstractTime* (temporal types)
```

### XML Mapping Pattern

Each class defines its XML structure using the `xml` block:

```ruby
class Point < AbstractGeometry
  attribute :pos, DirectPosition
  attribute :coordinates, Coordinates

  xml do
    element "Point"
    namespace Namespace  # References the Gml::Namespace constant

    # gml:id is a namespace-qualified global attribute
    map_attribute "id", to: :id, form: :qualified
    # Local attributes are unqualified in the GML schema
    map_attribute "srsName", to: :srs_name

    map_element "pos", to: :pos
    map_element "coordinates", to: :coordinates
  end
end
```

### Namespace Configuration

The namespace classes (`lib/ogc/gml/namespaces/gml_32_namespace.rb`) configure the GML namespace:

```ruby
class Gml32Namespace < Lutaml::Xml::Namespace
  uri "http://www.opengis.net/gml/3.2"
  prefix_default "gml"
  element_form_default :qualified
  # NO attribute_form_default here: GML declares attributeFormDefault="unqualified".
  # Qualifying the schema-wide default serialized invalid gml:srsName (issue #22).
  # Only per-rule form: :qualified on gml:id attributes.
end
```

## Testing

Tests use RSpec with the `canon` gem for XML comparison. The main pattern is round-trip testing:

```ruby
it "round-trips Point-epsg3045.xml" do
  input = file_contents("Point-epsg3045.xml")
  output = described_class.from_xml(input).to_xml(
    prefix: true,      # Include namespace prefixes
    pretty: true,      # Format with indentation
    declaration: true  # Include XML declaration
  )
  expect(SpecHelpers.remove_xml_comments(output))
    .to be_xml_equivalent_to(SpecHelpers.remove_xml_comments(input))
end
```

- `SpecHelpers.remove_xml_comments` (in `spec/spec_helper.rb`) is the shared comment-stripper.
- Strict attribute-form assertions live in `spec/ogc/gml/point_spec.rb` (gml:id prefixed; srsName/srsDimension never prefixed) and `spec/ogc/gml/gml3*_namespace_spec.rb`. Canon compares attributes loosely (lutaml/canon#155), so prefix regressions are only caught by these strict specs.
- RSpec semantics: `pending "reason"` inside an example body STILL EXECUTES the body; use `skip "reason"` when the body must not run (this once turned "pending" 3.1.1 round-trips into a multi-minute suite freeze).

Test fixtures are located in:
- `spec/fixtures/ets-gml32/` - GML test suite from OGC ETS for GML 3.2 (git submodule)
- `spec/fixtures/geospatial_jp_iur_3.1/` - Japanese i-UR codelist data (GML 3.1.1; round-trips skipped pending gml_31 register support)

## Dependencies

- **lutaml-model**: XML serialization framework (`~> 0.8.20` — first release with source-namespace-preserving serialization, which round-trip fidelity relies on)
- **nokogiri**: XML parsing
- **canon**: XML comparison for tests (dev dependency in Gemfile, not gemspec)

## Known upstream issues

- lutaml-model#754: lenient parsing of out-of-namespace documents silently drops `gml:description` content; resolution is strict expanded-name parsing with register-based multi-version support, never local-name fallbacks.
