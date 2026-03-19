# frozen_string_literal: true

require "lutaml/model"

require_relative "topo_complex"

module Ogc
  module Gml
    class TopoComplexProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :topo_complex, TopoComplex

      xml do
        element "topoComplexProperty"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_element "TopoComplex", to: :topo_complex
      end
    end
  end
end
