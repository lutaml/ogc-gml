# frozen_string_literal: true

require "lutaml/model"

require_relative "code"

module Ogc
  module Gml
    class CodeWithAuthority < Lutaml::Model::Serializable
      attribute :content, Code
      attribute :code_space, :string

      xml do
        root "derivedCRSType"
        namespace "http://www.opengis.net/gml/3.2", "gml"

        map_content to: :content
        map_attribute "codeSpace", to: :code_space
      end
    end
  end
end
