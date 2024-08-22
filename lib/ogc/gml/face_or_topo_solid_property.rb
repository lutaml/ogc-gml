# frozen_string_literal: true

require "lutaml/model"

# require_relative "face"
# require_relative "topo_solid"

module Ogc
  module Gml
    class Face < Lutaml::Model::Serializable; end
    class TopoSolid < Lutaml::Model::Serializable; end

    class FaceOrTopoSolidProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, :string
      attribute :owns, :boolean, default: -> { false }
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
