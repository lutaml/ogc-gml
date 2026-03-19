# frozen_string_literal: true

require "lutaml/model"
require_relative "identifier"

module Ogc
  module Gml
    class GenericMetaData < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :id, Identifier

      xml do
        element "GenericMetaData"
        namespace Namespace

        map_content to: :content
        map_attribute "id", to: :id, form: :qualified
      end
    end
  end
end
