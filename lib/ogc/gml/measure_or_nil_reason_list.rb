# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class MeasureOrNilReasonList < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :uom, :string

      xml do
        root "QuantityList"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_content to: :content
        map_attribute "uom", to: :uom
      end
    end
  end
end
