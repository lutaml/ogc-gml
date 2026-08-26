# frozen_string_literal: true

RSpec.describe Ogc::Gml::Dictionary do
  # These codelists come from https://www.geospatial.jp/iur/codelists/
  #
  # The fixtures are GML 3.1.1 documents: a different namespace and schema
  # from the GML 3.2 models in this gem. Multi-version support is being
  # built on lutaml-model registers (namespace-bound contexts, the mml
  # pattern); until the gml_31 register mappings are generated these
  # documents must not be parsed as GML 3.2, so the round-trips are
  # pending rather than rewritten into the 3.2 namespace.

  Dir.glob(Pathname.new(__dir__)
    .join("../../fixtures/geospatial_jp_iur_3.1/*.xml")).each do |filename|
    it "round-trips #{File.basename(filename)}" do
      skip "requires gml_31 register mappings (lutaml-model#754)"
      input = File.read(filename).gsub("\t", "  ")
      output = described_class.from_xml(input).to_xml(
        prefix: true,
        pretty: true,
        declaration: true,
        encoding: "utf-8",
      )

      expect(SpecHelpers.remove_xml_comments(output))
        .to be_xml_equivalent_to(SpecHelpers.remove_xml_comments(input))
    end
  end

  describe "GML 3.1.1 document against GML 3.2 models" do
    let(:input) do
      <<~XML
        <?xml version="1.0" encoding="UTF-8"?>
        <gml:Dictionary xmlns:gml="http://www.opengis.net/gml" gml:id="d">
          <gml:name>codes</gml:name>
          <gml:dictionaryEntry>
            <gml:Definition gml:id="c1">
              <gml:description>first</gml:description>
              <gml:name>ONE</gml:name>
            </gml:Definition>
          </gml:dictionaryEntry>
        </gml:Dictionary>
      XML
    end

    it "parses through the gml_31 register" do
      skip "gml_31 register mappings not yet generated"
      expect(described_class.from_xml(input, register: "gml_31"))
        .to be_a(described_class)
    end

    it "is rejected under strict namespace parsing" do
      skip "lutaml-model must drop the local-name fallback (lutaml-model#754)"
      expect { described_class.from_xml(input) }.to raise_error(Lutaml::Model::Error)
    end
  end
end
