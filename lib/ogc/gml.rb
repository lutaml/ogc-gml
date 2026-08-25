# frozen_string_literal: true

require "lutaml/model"

Lutaml::Model::Config.configure do |config|
  config.xml_adapter_type = :nokogiri
end

require_relative "gml/version"

module Ogc
  module Gml
    class Error < StandardError; end

    autoload :AbstractCRS,
             "ogc/gml/abstract_crs"
    autoload :AbstractContinuousCoverage,
             "ogc/gml/abstract_continuous_coverage"
    autoload :AbstractCoordinateOperation,
             "ogc/gml/abstract_coordinate_operation"
    autoload :AbstractCoordinateSystem,
             "ogc/gml/abstract_coordinate_system"
    autoload :AbstractCoverage,
             "ogc/gml/abstract_coverage"
    autoload :AbstractCurve,
             "ogc/gml/abstract_curve"
    autoload :AbstractCurveSegment,
             "ogc/gml/abstract_curve_segment"
    autoload :AbstractDatum,
             "ogc/gml/abstract_datum"
    autoload :AbstractFeature,
             "ogc/gml/abstract_feature"
    autoload :AbstractFeatureCollection,
             "ogc/gml/abstract_feature_collection"
    autoload :AbstractGML,
             "ogc/gml/abstract_gml"
    autoload :AbstractGeneralConversion,
             "ogc/gml/abstract_general_conversion"
    autoload :AbstractGeneralDerivedCRS,
             "ogc/gml/abstract_general_derived_crs"
    autoload :AbstractGeneralOperationParameter,
             "ogc/gml/abstract_general_operation_parameter"
    autoload :AbstractGeneralOperationParameterProperty,
             "ogc/gml/abstract_general_operation_parameter_property"
    autoload :AbstractGeneralParameterValue,
             "ogc/gml/abstract_general_parameter_value"
    autoload :AbstractGeneralParameterValueProperty,
             "ogc/gml/abstract_general_parameter_value_property"
    autoload :AbstractGeneralTransformation,
             "ogc/gml/abstract_general_transformation"
    autoload :AbstractGeometricAggregate,
             "ogc/gml/abstract_geometric_aggregate"
    autoload :AbstractGeometricPrimitive,
             "ogc/gml/abstract_geometric_primitive"
    autoload :AbstractGeometry,
             "ogc/gml/abstract_geometry"
    autoload :AbstractGriddedSurface,
             "ogc/gml/abstract_gridded_surface"
    autoload :AbstractMetaData,
             "ogc/gml/abstract_meta_data"
    autoload :AbstractParametricCurveSurface,
             "ogc/gml/abstract_parametric_curve_surface"
    autoload :AbstractRing,
             "ogc/gml/abstract_ring"
    autoload :AbstractRingProperty,
             "ogc/gml/abstract_ring_property"
    autoload :AbstractSolid,
             "ogc/gml/abstract_solid"
    autoload :AbstractSurface,
             "ogc/gml/abstract_surface"
    autoload :AbstractSurfacePatch,
             "ogc/gml/abstract_surface_patch"
    autoload :AbstractTimeComplex,
             "ogc/gml/abstract_time_complex"
    autoload :AbstractTimeGeometricPrimitive,
             "ogc/gml/abstract_time_geometric_primitive"
    autoload :AbstractTimeObject,
             "ogc/gml/abstract_time_object"
    autoload :AbstractTimePrimitive,
             "ogc/gml/abstract_time_primitive"
    autoload :AbstractTimeSlice,
             "ogc/gml/abstract_time_slice"
    autoload :AbstractTimeTopologyPrimitive,
             "ogc/gml/abstract_time_topology_primitive"
    autoload :AbstractTopoPrimitive,
             "ogc/gml/abstract_topo_primitive"
    autoload :AbstractTopology,
             "ogc/gml/abstract_topology"
    autoload :AffineCS,
             "ogc/gml/affine_cs"
    autoload :AffineCSProperty,
             "ogc/gml/affine_cs_property"
    autoload :AffinePlacement,
             "ogc/gml/affine_placement"
    autoload :AggregationType,
             "ogc/gml/dictionary"
    autoload :Angle,
             "ogc/gml/angle"
    autoload :Arc,
             "ogc/gml/arc"
    autoload :ArcByBulge,
             "ogc/gml/arc_by_bulge"
    autoload :ArcByCenterPoint,
             "ogc/gml/arc_by_center_point"
    autoload :ArcString,
             "ogc/gml/arc_string"
    autoload :ArcStringByBulge,
             "ogc/gml/arc_string_by_bulge"
    autoload :Array,
             "ogc/gml/array"
    autoload :ArrayAssociation,
             "ogc/gml/array_association"
    autoload :AssociationRole,
             "ogc/gml/association_role"
    autoload :BSpline,
             "ogc/gml/b_spline"
    autoload :Bag,
             "ogc/gml/bag"
    autoload :BaseUnit,
             "ogc/gml/base_unit"
    autoload :Bezier,
             "ogc/gml/bezier"
    autoload :Boolean,
             "ogc/gml/boolean"
    autoload :BoundingShape,
             "ogc/gml/bounding_shape"
    autoload :CRSProperty,
             "ogc/gml/crs_property"
    autoload :CartesianCS,
             "ogc/gml/cartesian_cs"
    autoload :CartesianCSProperty,
             "ogc/gml/cartesian_cs_property"
    autoload :Category,
             "ogc/gml/category"
    autoload :CategoryExtent,
             "ogc/gml/category_extent"
    autoload :Circle,
             "ogc/gml/circle"
    autoload :CircleByCenterPoint,
             "ogc/gml/circle_by_center_point"
    autoload :Clothoid,
             "ogc/gml/clothoid"
    autoload :Code,
             "ogc/gml/code"
    autoload :CodeOrNilReasonList,
             "ogc/gml/code_or_nil_reason_list"
    autoload :CodeWithAuthority,
             "ogc/gml/code_with_authority"
    autoload :CompositeCurve,
             "ogc/gml/composite_curve"
    autoload :CompositeSolid,
             "ogc/gml/composite_solid"
    autoload :CompositeSurface,
             "ogc/gml/composite_surface"
    autoload :CompositeValue,
             "ogc/gml/composite_value"
    autoload :CompoundCRS,
             "ogc/gml/compound_crs"
    autoload :CompoundCRSProperty,
             "ogc/gml/compound_crs_property"
    autoload :ConcatenatedOperation,
             "ogc/gml/concatenated_operation"
    autoload :ConcatenatedOperationProperty,
             "ogc/gml/concatenated_operation_property"
    autoload :Cone,
             "ogc/gml/cone"
    autoload :ControlPoint,
             "ogc/gml/control_point"
    autoload :ConventionalUnit,
             "ogc/gml/conventional_unit"
    autoload :Conversion,
             "ogc/gml/conversion"
    autoload :ConversionProperty,
             "ogc/gml/conversion_property"
    autoload :ConversionToPreferredUnit,
             "ogc/gml/conversion_to_preferred_unit"
    autoload :CoordinateOperationAccuracy,
             "ogc/gml/coordinate_operation_accuracy"
    autoload :CoordinateOperationProperty,
             "ogc/gml/coordinate_operation_property"
    autoload :CoordinateSystemAxis,
             "ogc/gml/coordinate_system_axis"
    autoload :CoordinateSystemAxisProperty,
             "ogc/gml/coordinate_system_axis_property"
    autoload :CoordinateSystemProperty,
             "ogc/gml/coordinate_system_property"
    autoload :Coordinates,
             "ogc/gml/coordinates"
    autoload :Count,
             "ogc/gml/count"
    autoload :CoverageFunction,
             "ogc/gml/coverage_function"
    autoload :CubicSpline,
             "ogc/gml/cubic_spline"
    autoload :Curve,
             "ogc/gml/curve"
    autoload :CurveArrayProperty,
             "ogc/gml/curve_array_property"
    autoload :CurveProperty,
             "ogc/gml/curve_property"
    autoload :CurveSegmentArrayProperty,
             "ogc/gml/curve_segment_array_property"
    autoload :Cylinder,
             "ogc/gml/cylinder"
    autoload :CylindricalCS,
             "ogc/gml/cylindrical_cs"
    autoload :CylindricalCSProperty,
             "ogc/gml/cylindrical_cs_property"
    autoload :DMSAngle,
             "ogc/gml/dms_angle"
    autoload :DataBlock,
             "ogc/gml/data_block"
    autoload :DatumProperty,
             "ogc/gml/datum_property"
    autoload :Definition,
             "ogc/gml/definition"
    autoload :DefinitionProxy,
             "ogc/gml/definition_proxy"
    autoload :Degrees,
             "ogc/gml/degrees"
    autoload :DerivationUnitTerm,
             "ogc/gml/derivation_unit_term"
    autoload :DerivedCRS,
             "ogc/gml/derived_crs"
    autoload :DerivedCRSProperty,
             "ogc/gml/derived_crs_property"
    autoload :DerivedUnit,
             "ogc/gml/derived_unit"
    autoload :Dictionary,
             "ogc/gml/dictionary"
    autoload :DictionaryEntry,
             "ogc/gml/dictionary_entry"
    autoload :DirectPosition,
             "ogc/gml/direct_position"
    autoload :DirectPositionList,
             "ogc/gml/direct_position_list"
    autoload :DirectedEdgeProperty,
             "ogc/gml/directed_edge_property"
    autoload :DirectedFaceProperty,
             "ogc/gml/directed_face_property"
    autoload :DirectedNodeProperty,
             "ogc/gml/directed_node_property"
    autoload :DirectedObservation,
             "ogc/gml/directed_observation"
    autoload :DirectedObservationAtDistance,
             "ogc/gml/directed_observation_at_distance"
    autoload :DirectedTopoSolidProperty,
             "ogc/gml/directed_topo_solid_property"
    autoload :DirectionDescription,
             "ogc/gml/direction_description"
    autoload :DirectionProperty,
             "ogc/gml/direction_property"
    autoload :DirectionVector,
             "ogc/gml/direction_vector"
    autoload :DiscreteCoverage,
             "ogc/gml/discrete_coverage"
    autoload :DomainOfValidity,
             "ogc/gml/domain_of_validity"
    autoload :DomainSet,
             "ogc/gml/domain_set"
    autoload :DynamicFeature,
             "ogc/gml/dynamic_feature"
    autoload :DynamicFeatureCollection,
             "ogc/gml/dynamic_feature_collection"
    autoload :DynamicFeatureMember,
             "ogc/gml/dynamic_feature_member"
    autoload :Edge,
             "ogc/gml/edge"
    autoload :Ellipsoid,
             "ogc/gml/ellipsoid"
    autoload :EllipsoidProperty,
             "ogc/gml/ellipsoid_property"
    autoload :EllipsoidalCS,
             "ogc/gml/ellipsoidal_cs"
    autoload :EllipsoidalCSProperty,
             "ogc/gml/ellipsoidal_cs_property"
    autoload :EngineeringCRS,
             "ogc/gml/engineering_crs"
    autoload :EngineeringCRSProperty,
             "ogc/gml/engineering_crs_property"
    autoload :EngineeringDatum,
             "ogc/gml/engineering_datum"
    autoload :EngineeringDatumProperty,
             "ogc/gml/engineering_datum_property"
    autoload :Envelope,
             "ogc/gml/envelope"
    autoload :EnvelopeWithTimePeriod,
             "ogc/gml/envelope_with_time_period"
    autoload :Face,
             "ogc/gml/face"
    autoload :FaceOrTopoSolidProperty,
             "ogc/gml/face_or_topo_solid_property"
    autoload :FeatureArrayProperty,
             "ogc/gml/feature_array_property"
    autoload :FeatureCollection,
             "ogc/gml/feature_collection"
    autoload :FeatureProperty,
             "ogc/gml/feature_property"
    autoload :File,
             "ogc/gml/file"
    autoload :Formula,
             "ogc/gml/formula"
    autoload :FormulaCitation,
             "ogc/gml/formula_citation"
    autoload :GeneralConversionProperty,
             "ogc/gml/general_conversion_property"
    autoload :GeneralTransformationProperty,
             "ogc/gml/general_transformation_property"
    autoload :GenericMetaData,
             "ogc/gml/generic_meta_data"
    autoload :GeocentricCRS,
             "ogc/gml/geocentric_crs"
    autoload :GeocentricCRSProperty,
             "ogc/gml/geocentric_crs_property"
    autoload :Geodesic,
             "ogc/gml/geodesic"
    autoload :GeodesicString,
             "ogc/gml/geodesic_string"
    autoload :GeodeticCRS,
             "ogc/gml/geodetic_crs"
    autoload :GeodeticCRSProperty,
             "ogc/gml/geodetic_crs_property"
    autoload :GeodeticDatum,
             "ogc/gml/geodetic_datum"
    autoload :GeodeticDatumProperty,
             "ogc/gml/geodetic_datum_property"
    autoload :GeographicCRS,
             "ogc/gml/geographic_crs"
    autoload :GeographicCRSProperty,
             "ogc/gml/geographic_crs_property"
    autoload :GeometricComplex,
             "ogc/gml/geometric_complex"
    autoload :GeometricPrimitiveProperty,
             "ogc/gml/geometric_primitive_property"
    autoload :GeometryArrayProperty,
             "ogc/gml/geometry_array_property"
    autoload :GeometryProperty,
             "ogc/gml/geometry_property"
    autoload :Gml31Namespace,
             "ogc/gml/namespaces/gml_31_namespace"
    autoload :Gml32Namespace,
             "ogc/gml/namespaces/gml_32_namespace"
    autoload :Grid,
             "ogc/gml/grid"
    autoload :GridEnvelope,
             "ogc/gml/grid_envelope"
    autoload :GridFunction,
             "ogc/gml/grid_function"
    autoload :GridLimits,
             "ogc/gml/grid_limits"
    autoload :HistoryProperty,
             "ogc/gml/history_property"
    autoload :Identifier,
             "ogc/gml/identifier"
    autoload :ImageCRS,
             "ogc/gml/image_crs"
    autoload :ImageCRSProperty,
             "ogc/gml/image_crs_property"
    autoload :ImageDatum,
             "ogc/gml/image_datum"
    autoload :ImageDatumProperty,
             "ogc/gml/image_datum_property"
    autoload :IndirectEntry,
             "ogc/gml/indirect_entry"
    autoload :InlineProperty,
             "ogc/gml/inline_property"
    autoload :Knot,
             "ogc/gml/knot"
    autoload :KnotProperty,
             "ogc/gml/knot_property"
    autoload :Length,
             "ogc/gml/length"
    autoload :LineString,
             "ogc/gml/line_string"
    autoload :LineStringSegment,
             "ogc/gml/line_string_segment"
    autoload :LineStringSegmentArrayProperty,
             "ogc/gml/line_string_segment_array_property"
    autoload :LinearCS,
             "ogc/gml/linear_cs"
    autoload :LinearCSProperty,
             "ogc/gml/linear_cs_property"
    autoload :LinearRing,
             "ogc/gml/linear_ring"
    autoload :LocationProperty,
             "ogc/gml/location_property"
    autoload :MappingRule,
             "ogc/gml/mapping_rule"
    autoload :Measure,
             "ogc/gml/measure"
    autoload :MeasureList,
             "ogc/gml/measure_list"
    autoload :MeasureOrNilReasonList,
             "ogc/gml/measure_or_nil_reason_list"
    autoload :MetaDataProperty,
             "ogc/gml/meta_data_property"
    autoload :MovingObjectStatus,
             "ogc/gml/moving_object_status"
    autoload :MultiCurve,
             "ogc/gml/multi_curve"
    autoload :MultiCurveProperty,
             "ogc/gml/multi_curve_property"
    autoload :MultiGeometry,
             "ogc/gml/multi_geometry"
    autoload :MultiGeometryProperty,
             "ogc/gml/multi_geometry_property"
    autoload :MultiPoint,
             "ogc/gml/multi_point"
    autoload :MultiPointProperty,
             "ogc/gml/multi_point_property"
    autoload :MultiSolid,
             "ogc/gml/multi_solid"
    autoload :MultiSolidProperty,
             "ogc/gml/multi_solid_property"
    autoload :MultiSurface,
             "ogc/gml/multi_surface"
    autoload :MultiSurfaceProperty,
             "ogc/gml/multi_surface_property"
    autoload :Namespace,
             "ogc/gml/namespace"
    autoload :Node,
             "ogc/gml/node"
    autoload :NodeOrEdgeProperty,
             "ogc/gml/node_or_edge_property"
    autoload :NodeProperty,
             "ogc/gml/node_property"
    autoload :ObliqueCartesianCS,
             "ogc/gml/oblique_cartesian_cs"
    autoload :ObliqueCartesianCSProperty,
             "ogc/gml/oblique_cartesian_cs_property"
    autoload :Observation,
             "ogc/gml/observation"
    autoload :OffsetCurve,
             "ogc/gml/offset_curve"
    autoload :OperationMethod,
             "ogc/gml/operation_method"
    autoload :OperationMethodProperty,
             "ogc/gml/operation_method_property"
    autoload :OperationParameter,
             "ogc/gml/operation_parameter"
    autoload :OperationParameterGroup,
             "ogc/gml/operation_parameter_group"
    autoload :OperationParameterGroupProperty,
             "ogc/gml/operation_parameter_group_property"
    autoload :OperationParameterProperty,
             "ogc/gml/operation_parameter_property"
    autoload :OperationProperty,
             "ogc/gml/operation_property"
    autoload :OrientableCurve,
             "ogc/gml/orientable_curve"
    autoload :OrientableSurface,
             "ogc/gml/orientable_surface"
    autoload :ParameterValue,
             "ogc/gml/parameter_value"
    autoload :ParameterValueGroup,
             "ogc/gml/parameter_value_group"
    autoload :PassThroughOperation,
             "ogc/gml/pass_through_operation"
    autoload :PassThroughOperationProperty,
             "ogc/gml/pass_through_operation_property"
    autoload :Point,
             "ogc/gml/point"
    autoload :PointArrayProperty,
             "ogc/gml/point_array_property"
    autoload :PointProperty,
             "ogc/gml/point_property"
    autoload :PolarCS,
             "ogc/gml/polar_cs"
    autoload :PolarCSProperty,
             "ogc/gml/polar_cs_property"
    autoload :Polygon,
             "ogc/gml/polygon"
    autoload :PolygonPatch,
             "ogc/gml/polygon_patch"
    autoload :PrimeMeridian,
             "ogc/gml/prime_meridian"
    autoload :PrimeMeridianProperty,
             "ogc/gml/prime_meridian_property"
    autoload :PriorityLocationProperty,
             "ogc/gml/priority_location_property"
    autoload :ProcedureProperty,
             "ogc/gml/procedure_property"
    autoload :ProjectedCRS,
             "ogc/gml/projected_crs"
    autoload :ProjectedCRSProperty,
             "ogc/gml/projected_crs_property"
    autoload :Quantity,
             "ogc/gml/quantity"
    autoload :QuantityExtent,
             "ogc/gml/quantity_extent"
    autoload :RangeSet,
             "ogc/gml/range_set"
    autoload :Rectangle,
             "ogc/gml/rectangle"
    autoload :RectifiedGrid,
             "ogc/gml/rectified_grid"
    autoload :RefLocation,
             "ogc/gml/ref_location"
    autoload :Reference,
             "ogc/gml/reference"
    autoload :RelatedTime,
             "ogc/gml/related_time"
    autoload :RemoteSchema,
             "ogc/gml/reference"
    autoload :Result,
             "ogc/gml/result"
    autoload :Ring,
             "ogc/gml/ring"
    autoload :SecondDefiningParameter1,
             "ogc/gml/second_defining_parameter1"
    autoload :SecondDefiningParameter2,
             "ogc/gml/second_defining_parameter2"
    autoload :SequenceRule,
             "ogc/gml/sequence_rule"
    autoload :Shell,
             "ogc/gml/shell"
    autoload :ShellProperty,
             "ogc/gml/shell_property"
    autoload :SingleCRSProperty,
             "ogc/gml/single_crs_property"
    autoload :SingleOperationProperty,
             "ogc/gml/single_operation_property"
    autoload :Solid,
             "ogc/gml/solid"
    autoload :SolidArrayProperty,
             "ogc/gml/solid_array_property"
    autoload :SolidProperty,
             "ogc/gml/solid_property"
    autoload :Sphere,
             "ogc/gml/sphere"
    autoload :SphericalCS,
             "ogc/gml/spherical_cs"
    autoload :SphericalCSProperty,
             "ogc/gml/spherical_cs_property"
    autoload :StringOrRef,
             "ogc/gml/string_or_ref"
    autoload :Surface,
             "ogc/gml/surface"
    autoload :SurfaceArrayProperty,
             "ogc/gml/surface_array_property"
    autoload :SurfacePatchArrayProperty,
             "ogc/gml/surface_patch_array_property"
    autoload :SurfaceProperty,
             "ogc/gml/surface_property"
    autoload :TargetProperty,
             "ogc/gml/target_property"
    autoload :TemporalCRS,
             "ogc/gml/temporal_crs"
    autoload :TemporalCRSProperty,
             "ogc/gml/temporal_crs_property"
    autoload :TemporalCS,
             "ogc/gml/temporal_cs"
    autoload :TemporalCSProperty,
             "ogc/gml/temporal_cs_property"
    autoload :TemporalDatum,
             "ogc/gml/temporal_datum"
    autoload :TemporalDatumProperty,
             "ogc/gml/temporal_datum_property"
    autoload :TimeCS,
             "ogc/gml/time_cs"
    autoload :TimeCSProperty,
             "ogc/gml/time_cs_property"
    autoload :TimeCalendar,
             "ogc/gml/time_calendar"
    autoload :TimeCalendarEra,
             "ogc/gml/time_calendar_era"
    autoload :TimeCalendarEraProperty,
             "ogc/gml/time_calendar_era_property"
    autoload :TimeCalendarProperty,
             "ogc/gml/time_calendar_property"
    autoload :TimeClock,
             "ogc/gml/time_clock"
    autoload :TimeCoordinateSystem,
             "ogc/gml/time_coordinate_system"
    autoload :TimeEdge,
             "ogc/gml/time_edge"
    autoload :TimeEdgeProperty,
             "ogc/gml/time_edge_property"
    autoload :TimeInstant,
             "ogc/gml/time_instant"
    autoload :TimeInstantProperty,
             "ogc/gml/time_instant_property"
    autoload :TimeIntervalLength,
             "ogc/gml/time_interval_length"
    autoload :TimeNode,
             "ogc/gml/time_node"
    autoload :TimeNodeProperty,
             "ogc/gml/time_node_property"
    autoload :TimeOrdinalEra,
             "ogc/gml/time_ordinal_era"
    autoload :TimeOrdinalEraProperty,
             "ogc/gml/time_ordinal_era_property"
    autoload :TimeOrdinalReferenceSystem,
             "ogc/gml/time_ordinal_reference_system"
    autoload :TimePeriod,
             "ogc/gml/time_period"
    autoload :TimePeriodProperty,
             "ogc/gml/time_period_property"
    autoload :TimePosition,
             "ogc/gml/time_position"
    autoload :TimePrimitiveProperty,
             "ogc/gml/time_primitive_property"
    autoload :TimeReferenceSystem,
             "ogc/gml/time_reference_system"
    autoload :TimeTopologyComplex,
             "ogc/gml/time_topology_complex"
    autoload :TimeTopologyPrimitiveProperty,
             "ogc/gml/time_topology_primitive_property"
    autoload :Tin,
             "ogc/gml/tin"
    autoload :TopoComplex,
             "ogc/gml/topo_complex"
    autoload :TopoComplexProperty,
             "ogc/gml/topo_complex_property"
    autoload :TopoCurve,
             "ogc/gml/topo_curve"
    autoload :TopoCurveProperty,
             "ogc/gml/topo_curve_property"
    autoload :TopoPoint,
             "ogc/gml/topo_point"
    autoload :TopoPointProperty,
             "ogc/gml/topo_point_property"
    autoload :TopoPrimitiveArrayAssociation,
             "ogc/gml/topo_primitive_array_association"
    autoload :TopoPrimitiveMember,
             "ogc/gml/topo_primitive_member"
    autoload :TopoSolid,
             "ogc/gml/topo_solid"
    autoload :TopoSolidProperty,
             "ogc/gml/topo_solid_property"
    autoload :TopoSurface,
             "ogc/gml/topo_surface"
    autoload :TopoSurfaceProperty,
             "ogc/gml/topo_surface_property"
    autoload :TopoVolume,
             "ogc/gml/topo_volume"
    autoload :TopoVolumeProperty,
             "ogc/gml/topo_volume_property"
    autoload :Transformation,
             "ogc/gml/transformation"
    autoload :TransformationProperty,
             "ogc/gml/transformation_property"
    autoload :Triangle,
             "ogc/gml/triangle"
    autoload :UnitDefinition,
             "ogc/gml/unit_definition"
    autoload :UnitOfMeasure,
             "ogc/gml/unit_of_measure"
    autoload :UserDefinedCS,
             "ogc/gml/user_defined_cs"
    autoload :UserDefinedCSProperty,
             "ogc/gml/user_defined_cs_property"
    autoload :VERSION,
             "ogc/gml/version"
    autoload :ValueArray,
             "ogc/gml/value_array"
    autoload :ValueArrayProperty,
             "ogc/gml/value_array_property"
    autoload :ValueProperty,
             "ogc/gml/value_property"
    autoload :Vector,
             "ogc/gml/vector"
    autoload :VerticalCRS,
             "ogc/gml/vertical_crs"
    autoload :VerticalCRSProperty,
             "ogc/gml/vertical_crs_property"
    autoload :VerticalCS,
             "ogc/gml/vertical_cs"
    autoload :VerticalCSProperty,
             "ogc/gml/vertical_cs_property"
    autoload :VerticalDatum,
             "ogc/gml/vertical_datum"
    autoload :VerticalDatumProperty,
             "ogc/gml/vertical_datum_property"
  end
end
