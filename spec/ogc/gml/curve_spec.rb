# frozen_string_literal: true

RSpec.describe Ogc::Gml::Curve do
  def file_contents(filename)
    File.read(
      Pathname.new(__dir__)
        .join("../../../spec/fixtures/ets-gml32/src/test/resources/geom/#{filename}")
    ).gsub("\t", "  ")
  end

  %w[
    Curve-ArcByCenterPoint.xml
    Curve-GeodesicString.xml
    Curve-ID_250.xml
    Curve-LineString-axisOrder.xml
    Curve-LineString.xml
    Curve-disconnected.xml
    Curve-empty.xml
    Curve-tripartite.xml
  ].each do |filename|
    it "round-trips #{filename}" do
      input = file_contents(filename)
      output = Ogc::Gml::Curve.from_xml(input).to_xml(
        pretty: true,
        declaration: true,
        encoding: "utf-8"
      )

      expect(output).to be_equivalent_to(input)
    end
  end
end
