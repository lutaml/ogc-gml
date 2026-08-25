# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class Quantity < Lutaml::Model::Serializable
      attribute :content, Measure
      attribute :nil_reason, :string

      xml do
        element "Quantity"
        namespace Namespace

        map_content to: :content
        map_attribute "nilReason", to: :nil_reason
      end
    end
  end
end
