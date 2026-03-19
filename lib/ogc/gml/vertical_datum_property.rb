# frozen_string_literal: true

require "lutaml/model"

require_relative "vertical_datum"

module Ogc
  module Gml
    class VerticalDatumProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :vertical_datum, VerticalDatum

      xml do
        element "usesVerticalDatum"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "VerticalDatum", to: :vertical_datum
      end
    end
  end
end
