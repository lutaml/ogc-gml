# frozen_string_literal: true

RSpec.describe Ogc::Gml::Envelope do
  def file_contents(filename)
    File.read(
      Pathname.new(__dir__)
        .join("../../../spec/fixtures/ets-gml32/src/test/resources/envelopes/#{filename}")
    ).gsub("\t", "  ")
  end

  %w[
    Envelope-httpRef.xml
    Envelope-invalidCRS.xml
    Envelope-invalidCorner.xml
    Envelope-noCRS.xml
    Envelope-valid.xml
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
