# frozen_string_literal: true

require "lutaml/xml/namespace"

module Ogc
  module Gml
    class Namespace < Lutaml::Xml::Namespace
      uri "http://www.opengis.net/gml/3.2"
      prefix_default "gml"
      # element_form_default :qualified
      # attribute_form_default :qualified
    end
  end
end
