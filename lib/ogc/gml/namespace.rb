# frozen_string_literal: true

require "lutaml/model/xml_namespace"

module Ogc
  module Gml
    class Namespace < Lutaml::Model::XmlNamespace
      uri "http://www.opengis.net/gml/3.2"
      prefix_default "gml"
    end
  end
end
