# frozen_string_literal: true

RSpec.describe Ogc::Gml::Dictionary do
  # These codelists come from https://www.geospatial.jp/iur/codelists/
  def file_contents(filename)
    File.read(
      Pathname.new(__dir__)
        .join("../../fixtures/geospatial_jp_iur_3.1/#{filename}"),
    )
      .gsub("\t", "  ")
      .gsub('xmlns:gml="http://www.opengis.net/gml"', 'xmlns:gml="http://www.opengis.net/gml/3.2"')
  end

  def remove_xml_comments(xml_string)
    doc = Nokogiri::XML(xml_string)
    doc.xpath("//comment()").remove
    doc.to_xml
  end

  glob_path = Pathname.new(__dir__)
    .join("../../fixtures/geospatial_jp_iur_3.1/*.xml")

  Dir.glob(glob_path).each do |filename|
    # it "round-trips #{filename} with equivalent-xml" do
    #   input = file_contents(Pathname.new(filename).basename)
    #   output = Ogc::Gml::Dictionary.from_xml(input).to_xml(
    #     pretty: true,
    #     declaration: true,
    #     encoding: "utf-8"
    #   )

    #   expect(output).to be_xml_equivalent_to(input)
    # end
    fn = Pathname.new(filename).basename
    it "round-trips #{fn}" do
      input = file_contents(Pathname.new(filename).basename)
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
