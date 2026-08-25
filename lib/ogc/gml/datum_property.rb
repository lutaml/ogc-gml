# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class DatumProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :abstract_datum, AbstractDatum

      xml do
        element "datumRef"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "AbstractDatum", to: :abstract_datum
      end
    end
  end
end
