# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class CategoryExtent < Lutaml::Model::Serializable
      attribute :content, CodeOrNilReasonList

      xml do
        element "CategoryExtent"
        namespace Namespace

        map_content to: :content
      end
    end
  end
end
