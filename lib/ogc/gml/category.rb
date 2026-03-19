# frozen_string_literal: true

require "lutaml/model"

require_relative "code"

module Ogc
  module Gml
    class Category < Lutaml::Model::Serializable
      attribute :content, Code
      attribute :nil_reason, :string

      xml do
        element "Category"
        namespace Namespace

        map_content to: :content
        map_attribute "nilReason", to: :nil_reason
      end
    end
  end
end
