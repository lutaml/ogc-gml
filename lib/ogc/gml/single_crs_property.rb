# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class SingleCRSProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :abstract_single_crs, AbstractCRS

      xml do
        element "includesSingleCRS"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "AbstractSingleCRS", to: :abstract_single_crs
      end
    end
  end
end
