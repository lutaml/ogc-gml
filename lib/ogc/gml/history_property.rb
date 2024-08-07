# frozen_string_literal: true

# --- history_property_type.rb ---
require "shale"

require_relative "abstract_time_slice"

module Ogc
  module Gml
    class HistoryProperty < Shale::Mapper
      attribute :owns, Shale::Type::Boolean, default: -> { "false" }
      attribute :abstract_time_slice, AbstractTimeSlice, collection: true

      xml do
        root "track"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "owns", to: :owns
        map_element "AbstractTimeSlice", to: :abstract_time_slice
      end
    end
  end
end
