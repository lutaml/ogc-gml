# frozen_string_literal: true

require "lutaml/model"

require_relative "face"

module Ogc
  module Gml
    class DirectedFaceProperty < Lutaml::Model::Serializable
      attribute :orientation, :string, default: -> { "+" }
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :owns, :boolean, default: -> { false }
      attribute :face, Face

      xml do
        element "directedFace"
        namespace Namespace

        map_attribute "orientation", to: :orientation
        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_attribute "owns", to: :owns
        map_element "Face", to: :face
      end
    end
  end
end
