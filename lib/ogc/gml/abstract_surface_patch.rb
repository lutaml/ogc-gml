# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class AbstractSurfacePatch < Lutaml::Model::Serializable
      xml do
        element "AbstractSurfacePatch"
        namespace Namespace
      end
    end
  end
end
