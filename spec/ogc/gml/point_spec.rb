# frozen_string_literal: true

RSpec.describe Ogc::Gml::Point do
  def file_contents(filename)
    File.read(
      Pathname.new(__dir__)
        .join("../../../spec/fixtures/ets-gml32/src/test/resources/geom/#{filename}"),
    ).gsub("\t", "  ")
  end

  %w[
    Point-2.5D.xml
    Point-27700.xml
    Point-axisOrder.xml
    Point-epsg3045.xml
    Point-srsNameOnPos.xml
  ].each do |filename|
    it "round-trips #{filename}" do
      input = file_contents(filename)
      output = described_class.from_xml(input).to_xml(
        prefix: true,
        pretty: true,
        declaration: true,
        encoding: "utf-8",
      )

      expect(output).to be_xml_equivalent_to(input)
    end
  end

  describe "attribute form (issue #22)" do
    let(:srs) { "urn:ogc:def:crs:EPSG::4326" }

    let(:xml) do
      described_class.new(id: "P1", srs_name: srs, srs_dimension: 2)
        .to_xml(prefix: true, pretty: true, declaration: true,
                encoding: "utf-8")
    end

    it "qualifies gml:id" do
      expect(xml).to include('gml:id="P1"')
    end

    it "emits srsName unprefixed" do
      expect(xml).to include("srsName=\"#{srs}\"")
    end

    it "never qualifies srsName" do
      expect(xml).not_to include("gml:srsName=")
    end

    it "emits srsDimension unprefixed" do
      expect(xml).to include('srsDimension="2"')
    end

    it "never qualifies srsDimension" do
      expect(xml).not_to include("gml:srsDimension=")
    end
  end

  describe "parse/serialize symmetry (issue #22)" do
    let(:srs) { "urn:ogc:def:crs:EPSG::4326" }

    let(:input) do
      <<~XML.strip
        <?xml version="1.0" encoding="utf-8"?>
        <gml:Point xmlns:gml="http://www.opengis.net/gml/3.2"
                   gml:id="P1" srsName="#{srs}">
          <gml:pos>1 2</gml:pos>
        </gml:Point>
      XML
    end

    it "parses an unprefixed srsName" do
      expect(described_class.from_xml(input).srs_name).to eq(srs)
    end

    it "parses gml:id into :id" do
      expect(described_class.from_xml(input).id).to eq("P1")
    end

    it "re-serializes srsName unprefixed" do
      output = described_class.from_xml(input)
        .to_xml(prefix: true, encoding: "utf-8")
      expect(output).not_to include("gml:srsName=")
    end

    it "re-serializes gml:id qualified" do
      output = described_class.from_xml(input)
        .to_xml(prefix: true, encoding: "utf-8")
      expect(output).to include('gml:id="P1"')
    end
  end
end
