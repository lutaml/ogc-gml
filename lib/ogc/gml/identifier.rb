# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class Identifier < Lutaml::Model::Type::String
      xml_namespace Namespace
    end
  end
end
