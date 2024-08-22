# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class Boolean < Lutaml::Model::Serializable
      attribute :content, :boolean
      attribute :nil_reason, :string

      xml do
        root "Boolean"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_content to: :content
        map_attribute "nilReason", to: :nil_reason
      end
    end
  end
end
