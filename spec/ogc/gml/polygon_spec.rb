# frozen_string_literal: true

RSpec.describe Ogc::Gml::Polygon do
  def file_contents(filename)
    File.read(
      Pathname.new(__dir__)
        .join("../../../ets-gml32/src/test/resources/#{filename}")
    ).gsub("\t", "  ")
  end

  %w[
    geom/Polygon-InteriorCrossesExterior.xml
    geom/Polygon-InteriorNotClosed.xml
    geom/Polygon-InteriorRing.xml
    geom/Polygon-InteriorTouchesExterior.xml
    geom/Polygon-NotClosed.xml
    geom/Polygon-UTM.xml
    gmlring2.xml
  ].each do |filename|
    it "round-trips #{filename}" do
      input = file_contents(filename)
      output = Ogc::Gml::Polygon.from_xml(input).to_xml(
        pretty: true,
        declaration: true,
        encoding: "utf-8"
      )

      expect(output).to be_equivalent_to(input)
    end
  end
end
