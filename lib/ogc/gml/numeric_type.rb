require "shale/type/value"

module Ogc
  module Gml
    # NumericType is a Shale::Type::Value that casts a value to an Integer or a
    # Float.
    class NumericType < Shale::Type::Value
      def self.cast(value)
        case value
        when nil
          nil
        when Integer, Float
          value
        when String
          cast_string(value)
        else
          raise ArgumentError, "Cannot cast #{value.inspect} to a number"
        end
      end

      def self.cast_string(number_string)
        !!Integer(number_string) && Integer(number_string)
      rescue StandardError
        Float(number_string)
      end
    end
  end
end
