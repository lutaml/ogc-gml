# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class CodeWithAuthority < Lutaml::Model::Serializable
      attribute :content, Code
      attribute :code_space, :string

      xml do
        element "derivedCRSType"
        namespace Namespace

        map_content to: :content
        map_attribute "codeSpace", to: :code_space
      end
    end
  end
end
