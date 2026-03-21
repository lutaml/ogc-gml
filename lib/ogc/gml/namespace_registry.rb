# frozen_string_literal: true

require_relative "namespaces/gml_32_namespace"
require_relative "namespaces/gml_31_namespace"

module Ogc
  module Gml
    # Namespace registry for GML version support
    #
    # Manages namespace classes and provides version detection
    module NamespaceRegistry
      GML_32_URI = "http://www.opengis.net/gml/3.2"
      GML_31_URI = "http://www.opengis.net/gml"

      class << self
        # Detect GML namespace URI from XML string
        #
        # @param xml_string [String] The XML content
        # @return [String] The detected namespace URI (defaults to GML 3.2)
        def detect_namespace_uri(xml_string)
          match = xml_string.match(/xmlns:gml="([^"]+)"/)
          match ? match[1] : GML_32_URI
        end

        # Get namespace class for a given URI
        #
        # @param uri [String] The namespace URI
        # @return [Class] The namespace class
        def namespace_class_for(uri)
          case uri
          when GML_31_URI
            Gml31Namespace
          else
            Gml32Namespace
          end
        end

        # Check if URI is GML 3.1.1
        #
        # @param uri [String] The namespace URI
        # @return [Boolean]
        def gml_31?(uri)
          uri == GML_31_URI
        end

        # Check if URI is GML 3.2
        #
        # @param uri [String] The namespace URI
        # @return [Boolean]
        def gml_32?(uri)
          uri == GML_32_URI
        end
      end
    end
  end
end
