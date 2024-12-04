# frozen_string_literal: true

RSpec.describe Ogc::Gml::CompositeCurve do
  let(:input) do
    File.read(
      Pathname.new(__dir__)
        .join("../../../spec/fixtures/ets-gml32/src/test/resources/geom/CompositeCurve.xml")
    ).gsub("\t", "  ")
  end

  it "round-trips CompositeCurve.xml" do
    output = described_class.from_xml(input).to_xml(
      pretty: true,
      declaration: true,
      encoding: "utf-8"
    )

    expect(output).to be_equivalent_to(input)
  end
end
