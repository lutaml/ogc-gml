# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class MultiCurveProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, RemoteSchema
      attribute :owns, :boolean, default: -> { false }
      attribute :multi_curve, MultiCurve

      xml do
        element "multiCurveProperty"
        namespace Namespace

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema
        map_attribute "owns", to: :owns
        map_element "MultiCurve", to: :multi_curve
      end
    end
  end
end
