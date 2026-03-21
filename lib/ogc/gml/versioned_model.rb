# frozen_string_literal: true

require_relative "namespace_registry"

module Ogc
  module Gml
    # VersionedModel provides namespace-aware parsing and serialization
    #
    # This module enables GML models to preserve their source namespace
    # during round-trip operations. When parsing GML 3.1.1 XML, the output
    # will use GML 3.1.1 namespace; when parsing GML 3.2, output uses GML 3.2.
    #
    # @example
    #   class Dictionary < Lutaml::Model::Serializable
    #     extend VersionedModel::ClassMethods
    #     # ... rest of class definition
    #   end
    #
    #   dict = Dictionary.from_xml(gml_31_xml)
    #   dict.to_xml  # Outputs with GML 3.1.1 namespace
    #
    module VersionedModel
      # Namespace URIs for GML versions
      GML_32_URI = "http://www.opengis.net/gml/3.2"
      GML_31_URI = "http://www.opengis.net/gml"

      # Wrapper class that preserves namespace during round-trip
      class VersionedWrapper
        attr_reader :model, :source_namespace

        def initialize(model, source_namespace)
          @model = model
          @source_namespace = source_namespace
        end

        # Delegate all methods to the wrapped model
        def method_missing(method, *args, **kwargs, &block)
          model.send(method, *args, **kwargs, &block)
        end

        def respond_to_missing?(method, include_private = false)
          model.respond_to?(method, include_private)
        end

        # Serialize with preserved namespace
        def to_xml(options = {})
          xml = model.to_xml(options)

          # Post-process to restore source namespace if needed
          if source_namespace && source_namespace != GML_32_URI
            xml = xml.gsub(GML_32_URI, source_namespace)
          end

          xml
        end
      end

      # Class methods to extend onto model classes
      module ClassMethods
        # Parse XML and return a version-aware wrapper
        #
        # @param xml [String] The XML content to parse
        # @param options [Hash] Additional parsing options
        # @return [VersionedWrapper] Wrapper that preserves namespace
        def from_xml_with_namespace(xml, options = {})
          # Detect source namespace before parsing
          source_ns = NamespaceRegistry.detect_namespace_uri(xml)

          # Parse the model normally
          model = from_xml(xml, options)

          # Wrap to preserve namespace
          VersionedWrapper.new(model, source_ns)
        end
      end
    end
  end
end
