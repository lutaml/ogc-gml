# frozen_string_literal: true

RSpec.describe Ogc::Gml::Dictionary do
  # These codelists come from https://www.geospatial.jp/iur/codelists/
  def file_contents(filename)
    File.read(
      Pathname.new(__dir__)
        .join("../../fixtures/geospatial_jp_iur_3.1/#{filename}")
    )
        .gsub("\t", "  ")
        .gsub('xmlns:gml="http://www.opengis.net/gml"', 'xmlns:gml="http://www.opengis.net/gml/3.2"')
  end

  glob_path = Pathname.new(__dir__)
                      .join("../../fixtures/geospatial_jp_iur_3.1/*.xml")

  Dir.glob(glob_path).each do |filepath|
    # it "round-trips #{filepath} with equivalent-xml" do
    #   input = file_contents(Pathname.new(filepath).basename)
    #   output = Ogc::Gml::Dictionary.from_xml(input).to_xml(
    #     pretty: true,
    #     declaration: true,
    #     encoding: "utf-8"
    #   )

    #   expect(output).to be_equivalent_to(input)
    # end

    filename = File.basename(filepath)
    it "round-trips #{filename} with xml-c14" do
      input = file_contents(filename)
      output = Ogc::Gml::Dictionary.from_xml(input).to_xml(
        pretty: true,
        declaration: true,
        encoding: "utf-8"
      )

      expect(output).to be_analogous_with(input)
    end
  end
end
