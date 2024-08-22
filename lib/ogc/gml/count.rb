# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class Count < Lutaml::Model::Serializable
      attribute :content, :integer
      attribute :nil_reason, :string

      xml do
        root "Count"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_content to: :content
        map_attribute "nilReason", to: :nil_reason
      end
    end
  end
end
