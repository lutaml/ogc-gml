# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class AbstractSurfacePatch < Lutaml::Model::Serializable
      xml do
        root "AbstractSurfacePatch"
        namespace Namespace
      end
    end
  end
end
