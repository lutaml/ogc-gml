# frozen_string_literal: true

RSpec.describe Ogc::Gml::Dictionary do
  # These codelists come from https://www.geospatial.jp/iur/codelists/
  #
  # The fixtures are GML 3.1.1. The models bind the GML 3.2 namespace, and
  # lenient parsing of out-of-namespace documents currently drops
  # gml:description content (lutaml-model#754), so the two fixtures that
  # carry descriptions fail to round-trip. Rewrite the fixtures to the
  # bound 3.2 namespace until that is fixed.
  def file_contents(filename)
    File.read(Pathname.new(__dir__)
      .join("../../fixtures/geospatial_jp_iur_3.1/#{filename}"))
      .gsub("\t", "  ")
      .gsub('xmlns:gml="http://www.opengis.net/gml"',
            'xmlns:gml="http://www.opengis.net/gml/3.2"')
  end

  Dir.glob(Pathname.new(__dir__)
    .join("../../fixtures/geospatial_jp_iur_3.1/*.xml")).each do |filename|
    it "round-trips #{File.basename(filename)}" do
      input = file_contents(File.basename(filename))
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

  describe "GML 3.1.1 input" do
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

    it "parses leniently" do
      dictionary = described_class.from_xml(input)
      expect(dictionary.dictionary_entry.count).to eq(1)
    end

    it "re-emits with the source namespace" do
      output = described_class.from_xml(input).to_xml(prefix: true)
      expect(output).to include('xmlns:gml="http://www.opengis.net/gml"')
    end

    it "does not rewrite the source namespace to GML 3.2" do
      output = described_class.from_xml(input).to_xml(prefix: true)
      expect(output).not_to include("gml/3.2")
    end

    it "preserves gml:description content" do
      pending "lenient parsing drops out-of-namespace elements (lutaml-model#754)"
      output = described_class.from_xml(input).to_xml(prefix: true)
      expect(output).to include("<gml:description>first</gml:description>")
    end
  end
end
