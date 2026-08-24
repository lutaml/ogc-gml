# frozen_string_literal: true

RSpec.describe Ogc::Gml::Gml32Namespace do
  it "defaults attribute form to :unqualified (GML 3.2.1 XSD)" do
    expect(described_class.attribute_form_default).to eq(:unqualified)
  end
end
