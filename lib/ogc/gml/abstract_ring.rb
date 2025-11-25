# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class AbstractRing < Lutaml::Model::Serializable
      xml do
        root "AbstractRing"
        namespace Namespace
      end
    end
  end
end
