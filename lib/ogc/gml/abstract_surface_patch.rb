# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class AbstractSurfacePatch < Lutaml::Model::Serializable
      xml do
        root "AbstractSurfacePatch"
        namespace "http://www.opengis.net/gml/3.2", "gml"
      end
    end
  end
end
