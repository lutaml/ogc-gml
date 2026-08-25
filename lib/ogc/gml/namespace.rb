# frozen_string_literal: true

require_relative "namespaces/gml_32_namespace"
require_relative "namespaces/gml_31_namespace"

module Ogc
  module Gml
    # Default namespace for GML 3.2
    # This is the primary namespace used by this library
    Namespace = Gml32Namespace
  end
end
