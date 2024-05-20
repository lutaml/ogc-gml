# frozen_string_literal: true

# --- projected_crs_property_type.rb ---
require "shale"

require_relative "projected_crs"

module Ogc
  module Gml
    class ProjectedCRSProperty < Shale::Mapper
      attribute :nil_reason, Shale::Type::Value
      attribute :remote_schema, Shale::Type::Value
      attribute :projected_crs, ProjectedCRS

      xml do
        root "projectedCRSRef"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_attribute "nilReason", to: :nil_reason
        map_attribute "remoteSchema", to: :remote_schema, prefix: "gml", namespace: "http://www.opengis.net/gml/3.2"
        map_element "ProjectedCRS", to: :projected_crs
      end
    end
  end
end
