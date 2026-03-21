# frozen_string_literal: true

RSpec.describe Ogc::Gml::MultiCurve do
  def file_contents(filename)
    File.read(
      Pathname.new(__dir__)
        .join("../../../spec/fixtures/ets-gml32/src/test/resources/geom/#{filename}"),
    ).gsub("\t", "  ")
  end

  def remove_xml_comments(xml_string)
    doc = Nokogiri::XML(xml_string)
    doc.xpath("//comment()").remove
    doc.to_xml
  end

  %w[
    MultiCurve-1.xml
    MultiCurve-2.xml
  ].each do |filename|
    it "round-trips #{filename}" do
      input = file_contents(filename)
      output = described_class.from_xml(input).to_xml(
        prefix: true,
        pretty: true,
        declaration: true,
        encoding: "utf-8",
      )

      expect(remove_xml_comments(output)).to be_xml_equivalent_to(remove_xml_comments(input))
    end
  end
end
