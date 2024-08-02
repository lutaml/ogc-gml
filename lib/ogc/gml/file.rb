# frozen_string_literal: true

require "shale"

require_relative "association_role"
require_relative "code"

module Ogc
  module Gml
    class File < Shale::Mapper
      attribute :range_parameters, AssociationRole
      attribute :file_name, Shale::Type::Value
      attribute :file_reference, Shale::Type::Value
      attribute :file_structure, Code
      attribute :mime_type, Shale::Type::Value
      attribute :compression, Shale::Type::Value

      xml do
        root "File"
        namespace "http://www.opengis.net/gml/3.2", "gml"

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
