# frozen_string_literal: true

require "lutaml/model"

require_relative "abstract_datum"

module Ogc
  module Gml
    class DatumProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, :string
      attribute :abstract_datum, AbstractDatum

      xml do
        root "datumRef"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "AbstractDatum", to: :abstract_datum
      end
    end
  end
end
