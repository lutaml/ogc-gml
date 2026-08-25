# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class HistoryProperty < Lutaml::Model::Serializable
      attribute :owns, :boolean, default: -> { false }
      attribute :abstract_time_slice, AbstractTimeSlice, collection: true

      xml do
        element "track"
        namespace Namespace

        map_attribute "owns", to: :owns
        map_element "AbstractTimeSlice", to: :abstract_time_slice
      end
    end
  end
end
