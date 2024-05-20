# frozen_string_literal: true

RSpec.describe Ogc::Gml::CompositeCurve do

  let(:input) {
    File.read(
      Pathname.new(__dir__)
        .join("../../../ets-gml32/src/test/resources/geom/CompositeCurve.xml")
    ).gsub("\t", "  ")
  }

  it "does something useful" do
    output = Ogc::Gml::CompositeCurve.from_xml(input).to_xml(
      pretty: true,
      declaration: true,
      encoding: "utf-8"
    )

    expect(output).to be_equivalent_to(input)
  end
end
