# frozen_string_literal: true

require "lutaml/model"
require_relative "identifier"

module Ogc
  module Gml
    class AbstractMetaData < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :id, Identifier

      xml do
        root "AbstractMetaData"
        namespace Namespace

        map_content to: :content
        map_attribute "id", to: :id
      end
    end
  end
end
