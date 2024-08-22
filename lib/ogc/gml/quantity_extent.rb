# frozen_string_literal: true

require "lutaml/model"

require_relative "measure_or_nil_reason_list"

module Ogc
  module Gml
    class QuantityExtent < Lutaml::Model::Serializable
      attribute :content, MeasureOrNilReasonList

      xml do
        root "QuantityExtent"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_content to: :content
      end
    end
  end
end
