# frozen_string_literal: true

require "shale"

# require_relative "face"
# require_relative "topo_solid"

module Ogc
  module Gml
    class Face < Shale::Mapper; end
    class TopoSolid < Shale::Mapper; end

    class FaceOrTopoSolidProperty < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :owns, Shale::Type::Boolean, default: -> { "false" }
      attribute :face, Face
      attribute :topo_solid, TopoSolid

      xml do
        root "FaceOrTopoSolidPropertyType"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_attribute "owns", to: :owns
        map_element "Face", to: :face
        map_element "TopoSolid", to: :topo_solid
      end
    end
  end
end
