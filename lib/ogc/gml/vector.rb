# frozen_string_literal: true

require "lutaml/model"

require_relative "direct_position"

module Ogc
  module Gml
    class Vector < Lutaml::Model::Serializable
      attribute :content, DirectPosition

      xml do
        root "vector"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_content to: :content
      end
    end
  end
end
