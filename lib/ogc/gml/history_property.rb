# frozen_string_literal: true

require "lutaml/model"

require_relative "abstract_time_slice"

module Ogc
  module Gml
    class HistoryProperty < Lutaml::Model::Serializable
      attribute :owns, :boolean, default: -> { false }
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
