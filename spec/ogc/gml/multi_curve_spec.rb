# frozen_string_literal: true

RSpec.describe Ogc::Gml::MultiCurve do
  def file_contents(filename)
    File.read(
      Pathname.new(__dir__)
        .join("../../../spec/fixtures/ets-gml32/src/test/resources/geom/#{filename}")
    ).gsub("\t", "  ")
  end

  %w(
    MultiCurve-1.xml
    MultiCurve-2.xml
  ).each do |filename|
    it "round-trips #{filename}" do
      input = file_contents(filename)
      output = Ogc::Gml::MultiCurve.from_xml(input).to_xml(
        pretty: true,
        declaration: true,
        encoding: "utf-8",
      )

      expect(output).to be_equivalent_to(input)
    end
  end
end
