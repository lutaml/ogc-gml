# frozen_string_literal: true

RSpec.describe Ogc::Gml::Point do
  def file_contents(filename)
    File.read(
      Pathname.new(__dir__)
        .join("../../../ets-gml32/src/test/resources/geom/#{filename}")
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
      output = Ogc::Gml::Point.from_xml(input).to_xml(
        pretty: true,
        declaration: true,
        encoding: "utf-8"
      )

      expect(output).to be_equivalent_to(input)
    end
  end
end
