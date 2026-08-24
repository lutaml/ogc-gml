# frozen_string_literal: true

require "lutaml/xml/namespace"

module Ogc
  module Gml
    # GML 3.1.1 namespace (http://www.opengis.net/gml) - no version suffix
    class Gml31Namespace < Lutaml::Xml::Namespace
      uri "http://www.opengis.net/gml"
      prefix_default "gml"
      element_form_default :qualified
    end
  end
end
