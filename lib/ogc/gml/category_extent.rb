# frozen_string_literal: true

require "lutaml/model"

require_relative "code_or_nil_reason_list"

module Ogc
  module Gml
    class CategoryExtent < Lutaml::Model::Serializable
      attribute :content, CodeOrNilReasonList

      xml do
        root "CategoryExtent"
        namespace Namespace

        map_content to: :content
      end
    end
  end
end
