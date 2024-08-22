# frozen_string_literal: true

require "lutaml/model"

require_relative "degrees"

module Ogc
  module Gml
    class DMSAngle < Lutaml::Model::Serializable
      attribute :degrees, Degrees
      attribute :decimal_minutes, :float
      attribute :minutes, :integer
      attribute :seconds, :float

      xml do
        root "dmsAngle"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_element "degrees", to: :degrees
        map_element "decimalMinutes", to: :decimal_minutes
        map_element "minutes", to: :minutes
        map_element "seconds", to: :seconds
      end
    end
  end
end
