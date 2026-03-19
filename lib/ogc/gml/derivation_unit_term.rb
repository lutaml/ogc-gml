# frozen_string_literal: true

require "lutaml/model"

module Ogc
  module Gml
    class DerivationUnitTerm < Lutaml::Model::Serializable
      attribute :uom, :string
      attribute :exponent, :integer

      xml do
        element "derivationUnitTerm"
        namespace Namespace

        map_attribute "uom", to: :uom
        map_attribute "exponent", to: :exponent
      end
    end
  end
end
