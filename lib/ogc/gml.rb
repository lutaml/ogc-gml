# frozen_string_literal: true

require "lutaml/model"

Lutaml::Model::Config.configure do |config|
  require "lutaml/model/xml_adapter/nokogiri_adapter"
  config.xml_adapter = Lutaml::Model::XmlAdapter::NokogiriAdapter
end

require_relative "gml/version"

module Ogc
  module Gml
    class Error < StandardError; end

    # Your code goes here...
  end
end

require_relative "gml/abstract_continuous_coverage"
require_relative "gml/abstract_coordinate_operation"
require_relative "gml/abstract_coordinate_system"
require_relative "gml/abstract_coverage"
require_relative "gml/abstract_crs"
require_relative "gml/abstract_curve_segment"
require_relative "gml/abstract_curve"
require_relative "gml/abstract_datum"
require_relative "gml/abstract_feature_collection"
require_relative "gml/abstract_feature"
require_relative "gml/abstract_general_conversion"
require_relative "gml/abstract_general_derived_crs"
require_relative "gml/abstract_general_operation_parameter_property"
require_relative "gml/abstract_general_operation_parameter"
require_relative "gml/abstract_general_parameter_value_property"
require_relative "gml/abstract_general_parameter_value"
require_relative "gml/abstract_general_transformation"
require_relative "gml/abstract_geometric_aggregate"
require_relative "gml/abstract_geometric_primitive"
require_relative "gml/abstract_geometry"
require_relative "gml/abstract_gml"
require_relative "gml/abstract_gridded_surface"
require_relative "gml/abstract_meta_data"
require_relative "gml/abstract_parametric_curve_surface"
require_relative "gml/abstract_ring_property"
require_relative "gml/abstract_ring"
require_relative "gml/abstract_solid"
require_relative "gml/abstract_surface_patch"
require_relative "gml/abstract_surface"
require_relative "gml/abstract_time_complex"
require_relative "gml/abstract_time_geometric_primitive"
require_relative "gml/abstract_time_object"
require_relative "gml/abstract_time_primitive"
require_relative "gml/abstract_time_slice"
require_relative "gml/abstract_time_topology_primitive"
require_relative "gml/abstract_topo_primitive"
require_relative "gml/abstract_topology"
require_relative "gml/affine_cs_property"
require_relative "gml/affine_cs"
require_relative "gml/affine_placement"
require_relative "gml/angle"
require_relative "gml/arc_by_bulge"
require_relative "gml/arc_by_center_point"
require_relative "gml/arc_string_by_bulge"
require_relative "gml/arc_string"
require_relative "gml/arc"
require_relative "gml/array_association"
require_relative "gml/array"
require_relative "gml/association_role"
require_relative "gml/b_spline"
require_relative "gml/bag"
require_relative "gml/base_unit"
require_relative "gml/bezier"
require_relative "gml/boolean"
require_relative "gml/bounding_shape"
require_relative "gml/cartesian_cs_property"
require_relative "gml/cartesian_cs"
require_relative "gml/category"
require_relative "gml/category_extent"
require_relative "gml/circle_by_center_point"
require_relative "gml/circle"
require_relative "gml/clothoid"
require_relative "gml/code_or_nil_reason_list"
require_relative "gml/code"
require_relative "gml/code_with_authority"
require_relative "gml/composite_curve"
require_relative "gml/composite_solid"
require_relative "gml/composite_surface"
require_relative "gml/composite_value"
require_relative "gml/compound_crs_property"
require_relative "gml/compound_crs"
require_relative "gml/concatenated_operation_property"
require_relative "gml/concatenated_operation"
require_relative "gml/cone"
require_relative "gml/control_point"
require_relative "gml/conventional_unit"
require_relative "gml/conversion_property"
require_relative "gml/conversion_to_preferred_unit"
require_relative "gml/conversion"
require_relative "gml/coordinate_operation_accuracy"
require_relative "gml/coordinate_operation_property"
require_relative "gml/coordinate_system_axis_property"
require_relative "gml/coordinate_system_axis"
require_relative "gml/coordinate_system_property"
require_relative "gml/coordinates"
require_relative "gml/count"
require_relative "gml/coverage_function"
require_relative "gml/crs_property"
require_relative "gml/cubic_spline"
require_relative "gml/curve_array_property"
require_relative "gml/curve_property"
require_relative "gml/curve_segment_array_property"
require_relative "gml/curve"
require_relative "gml/cylinder"
require_relative "gml/cylindrical_cs_property"
require_relative "gml/cylindrical_cs"
require_relative "gml/data_block"
require_relative "gml/datum_property"
require_relative "gml/definition_proxy"
require_relative "gml/definition"
require_relative "gml/degrees"
require_relative "gml/derivation_unit_term"
require_relative "gml/derived_crs_property"
require_relative "gml/derived_crs"
require_relative "gml/derived_unit"
require_relative "gml/dictionary_entry"
require_relative "gml/dictionary"
require_relative "gml/direct_position_list"
require_relative "gml/direct_position"
require_relative "gml/directed_edge_property"
require_relative "gml/directed_face_property"
require_relative "gml/directed_node_property"
require_relative "gml/directed_observation_at_distance"
require_relative "gml/directed_observation"
require_relative "gml/directed_topo_solid_property"
require_relative "gml/direction_description"
require_relative "gml/direction_property"
require_relative "gml/direction_vector"
require_relative "gml/discrete_coverage"
require_relative "gml/dms_angle"
require_relative "gml/domain_of_validity"
require_relative "gml/domain_set"
require_relative "gml/dynamic_feature_collection"
require_relative "gml/dynamic_feature_member"
require_relative "gml/dynamic_feature"
require_relative "gml/edge"
require_relative "gml/ellipsoid_property"
require_relative "gml/ellipsoid"
require_relative "gml/ellipsoidal_cs_property"
require_relative "gml/ellipsoidal_cs"
require_relative "gml/engineering_crs_property"
require_relative "gml/engineering_crs"
require_relative "gml/engineering_datum_property"
require_relative "gml/engineering_datum"
require_relative "gml/envelope"
require_relative "gml/envelope_with_time_period"
require_relative "gml/face_or_topo_solid_property"
require_relative "gml/face"
require_relative "gml/feature_array_property"
require_relative "gml/feature_collection"
require_relative "gml/feature_property"
require_relative "gml/file"
require_relative "gml/formula_citation"
require_relative "gml/formula"
require_relative "gml/general_conversion_property"
require_relative "gml/general_transformation_property"
require_relative "gml/generic_meta_data"
require_relative "gml/geocentric_crs_property"
require_relative "gml/geocentric_crs"
require_relative "gml/geodesic_string"
require_relative "gml/geodesic"
require_relative "gml/geodetic_crs_property"
require_relative "gml/geodetic_crs"
require_relative "gml/geodetic_datum_property"
require_relative "gml/geodetic_datum"
require_relative "gml/geographic_crs_property"
require_relative "gml/geographic_crs"
require_relative "gml/geometric_complex"
require_relative "gml/geometric_primitive_property"
require_relative "gml/geometry_array_property"
require_relative "gml/geometry_property"
require_relative "gml/grid_envelope"
require_relative "gml/grid_function"
require_relative "gml/grid_limits"
require_relative "gml/grid"
require_relative "gml/history_property"
require_relative "gml/image_crs_property"
require_relative "gml/image_crs"
require_relative "gml/image_datum_property"
require_relative "gml/image_datum"
require_relative "gml/indirect_entry"
require_relative "gml/inline_property"
require_relative "gml/knot_property"
require_relative "gml/knot"
require_relative "gml/length"
require_relative "gml/line_string_segment_array_property"
require_relative "gml/line_string_segment"
require_relative "gml/line_string"
require_relative "gml/linear_cs_property"
require_relative "gml/linear_cs"
require_relative "gml/linear_ring"
require_relative "gml/location_property"
require_relative "gml/mapping_rule"
require_relative "gml/measure_list"
require_relative "gml/measure_or_nil_reason_list"
require_relative "gml/measure"
require_relative "gml/meta_data_property"
require_relative "gml/moving_object_status"
require_relative "gml/multi_curve_property"
require_relative "gml/multi_curve"
require_relative "gml/multi_geometry_property"
require_relative "gml/multi_geometry"
require_relative "gml/multi_point_property"
require_relative "gml/multi_point"
require_relative "gml/multi_solid_property"
require_relative "gml/multi_solid"
require_relative "gml/multi_surface_property"
require_relative "gml/multi_surface"
require_relative "gml/node_or_edge_property"
require_relative "gml/node_property"
require_relative "gml/node"
require_relative "gml/oblique_cartesian_cs_property"
require_relative "gml/oblique_cartesian_cs"
require_relative "gml/observation"
require_relative "gml/offset_curve"
require_relative "gml/operation_method_property"
require_relative "gml/operation_method"
require_relative "gml/operation_parameter_group_property"
require_relative "gml/operation_parameter_group"
require_relative "gml/operation_parameter_property"
require_relative "gml/operation_parameter"
require_relative "gml/operation_property"
require_relative "gml/orientable_curve"
require_relative "gml/orientable_surface"
require_relative "gml/parameter_value_group"
require_relative "gml/parameter_value"
require_relative "gml/pass_through_operation_property"
require_relative "gml/pass_through_operation"
require_relative "gml/point_array_property"
require_relative "gml/point_property"
require_relative "gml/point"
require_relative "gml/polar_cs_property"
require_relative "gml/polar_cs"
require_relative "gml/polygon_patch"
require_relative "gml/polygon"
require_relative "gml/prime_meridian_property"
require_relative "gml/prime_meridian"
require_relative "gml/priority_location_property"
require_relative "gml/procedure_property"
require_relative "gml/projected_crs_property"
require_relative "gml/projected_crs"
require_relative "gml/quantity"
require_relative "gml/quantity_extent"
require_relative "gml/range_set"
require_relative "gml/rectangle"
require_relative "gml/rectified_grid"
require_relative "gml/ref_location"
require_relative "gml/reference"
require_relative "gml/related_time"
require_relative "gml/result"
require_relative "gml/ring"
require_relative "gml/second_defining_parameter1"
require_relative "gml/second_defining_parameter2"
require_relative "gml/sequence_rule"
require_relative "gml/shell_property"
require_relative "gml/shell"
require_relative "gml/single_crs_property"
require_relative "gml/single_operation_property"
require_relative "gml/solid_array_property"
require_relative "gml/solid_property"
require_relative "gml/solid"
require_relative "gml/sphere"
require_relative "gml/spherical_cs_property"
require_relative "gml/spherical_cs"
require_relative "gml/string_or_ref"
require_relative "gml/surface_array_property"
require_relative "gml/surface_patch_array_property"
require_relative "gml/surface_property"
require_relative "gml/surface"
require_relative "gml/target_property"
require_relative "gml/temporal_crs_property"
require_relative "gml/temporal_crs"
require_relative "gml/temporal_cs_property"
require_relative "gml/temporal_cs"
require_relative "gml/temporal_datum_property"
require_relative "gml/temporal_datum"
require_relative "gml/time_calendar_era_property"
require_relative "gml/time_calendar_era"
require_relative "gml/time_calendar_property"
require_relative "gml/time_calendar"
require_relative "gml/time_clock"
require_relative "gml/time_coordinate_system"
require_relative "gml/time_cs_property"
require_relative "gml/time_cs"
require_relative "gml/time_edge_property"
require_relative "gml/time_edge"
require_relative "gml/time_instant_property"
require_relative "gml/time_instant"
require_relative "gml/time_interval_length"
require_relative "gml/time_node_property"
require_relative "gml/time_node"
require_relative "gml/time_ordinal_era_property"
require_relative "gml/time_ordinal_era"
require_relative "gml/time_ordinal_reference_system"
require_relative "gml/time_period_property"
require_relative "gml/time_period"
require_relative "gml/time_position"
require_relative "gml/time_primitive_property"
require_relative "gml/time_reference_system"
require_relative "gml/time_topology_complex"
require_relative "gml/time_topology_primitive_property"
require_relative "gml/tin"
require_relative "gml/topo_complex_property"
require_relative "gml/topo_complex"
require_relative "gml/topo_curve_property"
require_relative "gml/topo_curve"
require_relative "gml/topo_point_property"
require_relative "gml/topo_point"
require_relative "gml/topo_primitive_array_association"
require_relative "gml/topo_primitive_member"
require_relative "gml/topo_solid_property"
require_relative "gml/topo_solid"
require_relative "gml/topo_surface_property"
require_relative "gml/topo_surface"
require_relative "gml/topo_volume_property"
require_relative "gml/topo_volume"
require_relative "gml/transformation_property"
require_relative "gml/transformation"
require_relative "gml/triangle"
require_relative "gml/unit_definition"
require_relative "gml/unit_of_measure"
require_relative "gml/user_defined_cs_property"
require_relative "gml/user_defined_cs"
require_relative "gml/value_array_property"
require_relative "gml/value_array"
require_relative "gml/value_property"
require_relative "gml/vector"
require_relative "gml/vertical_crs_property"
require_relative "gml/vertical_crs"
require_relative "gml/vertical_cs_property"
require_relative "gml/vertical_cs"
require_relative "gml/vertical_datum_property"
require_relative "gml/vertical_datum"
