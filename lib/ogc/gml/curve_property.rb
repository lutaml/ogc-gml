# frozen_string_literal: true

require "lutaml/model"

require_relative "abstract_curve"
require_relative "curve"
require_relative "orientable_curve"
require_relative "line_string"

module Ogc
  module Gml
    class CurveProperty < Lutaml::Model::Serializable
      attribute :nil_reason, :string
      attribute :remote_schema, :string
      attribute :owns, :boolean
      attribute :abstract_curve, AbstractCurve
      attribute :curve, Curve
      attribute :orientable_curve, OrientableCurve
      attribute :line_string, LineString

      xml do
        root "centerLineOf"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_attribute "owns", to: :owns

        map_element "AbstractCurve", to: :abstract_curve
        map_element "Curve", to: :curve, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "OrientableCurve", to: :orientable_curve, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "LineString", to: :line_string, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
      end
    end
  end
end
