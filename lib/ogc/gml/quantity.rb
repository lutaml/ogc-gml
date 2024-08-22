# frozen_string_literal: true

require "lutaml/model"

require_relative "measure"

module Ogc
  module Gml
    class Quantity < Lutaml::Model::Serializable
      attribute :content, Measure
      attribute :nil_reason, :string

      xml do
        root "Quantity"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_content to: :content
        map_attribute "nilReason", to: :nil_reason
      end
    end
  end
end
