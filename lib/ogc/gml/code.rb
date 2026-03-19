# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class Code < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :code_space, :string

      xml do
        element "LocationKeyWord"
        namespace Namespace

        map_content to: :content
        map_attribute "codeSpace", to: :code_space
      end
    end
  end
end
