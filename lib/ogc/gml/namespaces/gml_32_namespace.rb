# frozen_string_literal: true

require "lutaml/xml/namespace"

module Ogc
  module Gml
    # GML 3.2 namespace (http://www.opengis.net/gml/3.2)
    class Gml32Namespace < Lutaml::Xml::Namespace
      uri "http://www.opengis.net/gml/3.2"
      prefix_default "gml"
      element_form_default :qualified
    end
  end
end
