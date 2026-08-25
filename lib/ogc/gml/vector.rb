# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class Vector < Lutaml::Model::Serializable
      attribute :content, DirectPosition

      xml do
        element "vector"
        namespace Namespace

        map_content to: :content
      end
    end
  end
end
