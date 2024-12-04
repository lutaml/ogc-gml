# frozen_string_literal: true

RSpec.describe Ogc::Gml::LineString do
  def file_contents(filename)
    File.read(
      Pathname.new(__dir__)
        .join("../../../spec/fixtures/ets-gml32/src/test/resources/geom/#{filename}")
    ).gsub("\t", "  ")
  end

  %w[
    LineString-invalidCoords.xml
    LineString-srsName-http.xml
    LineString.xml
  ].each do |filename|
    it "round-trips #{filename}" do
      input = file_contents(filename)
      output = described_class.from_xml(input).to_xml(
        pretty: true,
        declaration: true,
        encoding: "utf-8"
      )

      expect(output).to be_equivalent_to(input)
    end
  end
end
