# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class QuantityExtent < Lutaml::Model::Serializable
      attribute :content, MeasureOrNilReasonList

      xml do
        element "QuantityExtent"
        namespace Namespace

        map_content to: :content
      end
    end
  end
end
