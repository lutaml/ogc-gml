# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class TimeIntervalLength < Lutaml::Model::Serializable
      attribute :content, :float
      attribute :unit, :string
      attribute :radix, :integer
      attribute :factor, :integer

      xml do
        root "timeInterval"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_content to: :content
        map_attribute "unit", to: :unit
        map_attribute "radix", to: :radix
        map_attribute "factor", to: :factor
      end
    end
  end
end
