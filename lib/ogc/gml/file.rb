# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class File < Lutaml::Model::Serializable
      attribute :range_parameters, AssociationRole
      attribute :file_name, :string
      attribute :file_reference, :string
      attribute :file_structure, Code
      attribute :mime_type, :string
      attribute :compression, :string

      xml do
        element "File"
        namespace Namespace

        map_element "rangeParameters", to: :range_parameters
        map_element "fileName", to: :file_name
        map_element "fileReference", to: :file_reference
        map_element "fileStructure", to: :file_structure
        map_element "mimeType", to: :mime_type
        map_element "compression", to: :compression
      end
    end
  end
end
