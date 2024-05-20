# frozen_string_literal: true

# --- feature_array_property_type.rb ---
require "shale"

require_relative "abstract_feature"

module Ogc
  module Gml
    class FeatureArrayProperty < Shale::Mapper
      attribute :abstract_feature, AbstractFeature, collection: true

      xml do
        root "featureMembers"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_element "AbstractFeature", to: :abstract_feature
      end
    end
  end
end
