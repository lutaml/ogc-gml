# frozen_string_literal: true

require "shale"

require_relative "topo_complex"

module Ogc
  module Gml
    class TopoComplexProperty < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :topo_complex, TopoComplex

      xml do
        root "topoComplexProperty"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "TopoComplex", to: :topo_complex
      end
    end
  end
end
