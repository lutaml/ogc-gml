# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class AbstractRing < Lutaml::Model::Serializable
      xml do
        root "AbstractRing"
        namespace "http://www.opengis.net/gml/3.2", "gml"
      end
    end
  end
end
