# frozen_string_literal: true

RSpec.describe Ogc::Gml::Surface do

  def file_contents(filename)
    File.read(
      Pathname.new(__dir__)
        .join("../../../ets-gml32/src/test/resources/geom/#{filename}")
    ).gsub("\t", "  ")
  end

  %w(
    Surface-Curve-ID_250.xml
    Surface-DiscontiguousPatches.xml
    Surface-ExteriorCCW.xml
    Surface-ExteriorCW.xml
    Surface-InteriorCCW.xml
    Surface-PolygonPatch-1.xml
    Surface-PolygonPatch-2.xml
    Surface-PolygonPatch-3.xml
    Surface-PolygonPatch-AxisOrder.xml
    Surface-PolygonPatch-ExteriorCurve.xml
    Surface-PolygonPatch-ExteriorCurveCW.xml
    Surface-RectangleTriangle.xml
  ).each do |filename|
    it "round-trips #{filename}" do
      input = file_contents(filename)
      output = Ogc::Gml::Surface.from_xml(input).to_xml(
        pretty: true,
        declaration: true,
        encoding: "utf-8"
      )

      expect(output).to be_equivalent_to(input)
    end
  end
end
