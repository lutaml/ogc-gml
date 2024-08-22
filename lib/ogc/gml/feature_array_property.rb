# frozen_string_literal: true

require "lutaml/model"

require_relative "abstract_feature"

module Ogc
  module Gml
    class FeatureArrayProperty < Lutaml::Model::Serializable
      attribute :abstract_feature, AbstractFeature, collection: true

      xml do
        root "featureMembers"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_element "AbstractFeature", to: :abstract_feature
      end
    end
  end
end
