# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class AbstractMetaData < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :id, Identifier

      xml do
        element "AbstractMetaData"
        namespace Namespace

        map_content to: :content
        map_attribute "id", to: :id, form: :qualified
      end
    end
  end
end
