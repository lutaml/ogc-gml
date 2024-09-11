# frozen_string_literal: true

require_relative "lib/ogc/gml/version"

Gem::Specification.new do |spec|
  spec.name = "ogc-gml"
  spec.version = Ogc::Gml::VERSION
  spec.authors = ["Ribose Inc."]
  spec.email = ["open.source@ribose.com'"]

  spec.summary = "OGC GML data model parser"
  spec.description = "OGC GML data model parser"
  spec.homepage = "https://github.com/lutaml/ogc-gml"
  spec.license = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "https://github.com/lutaml/ogc-gml/releases"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem
  # that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`
      .split("\x0")
      .reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.7.0"

  spec.add_runtime_dependency "lutaml-model", "~> 0.3.10"
  spec.add_runtime_dependency "nokogiri"
end
