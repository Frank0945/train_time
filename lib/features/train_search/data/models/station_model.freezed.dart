// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'station_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StationModel _$StationModelFromJson(Map<String, dynamic> json) {
  return _StationModel.fromJson(json);
}

/// @nodoc
mixin _$StationModel {
  String get belong => throw _privateConstructorUsedError;
  String get belongId => throw _privateConstructorUsedError;
  List<StationInfoModel> get stations => throw _privateConstructorUsedError;

  /// Serializes this StationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StationModelCopyWith<StationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StationModelCopyWith<$Res> {
  factory $StationModelCopyWith(
          StationModel value, $Res Function(StationModel) then) =
      _$StationModelCopyWithImpl<$Res, StationModel>;
  @useResult
  $Res call({String belong, String belongId, List<StationInfoModel> stations});
}

/// @nodoc
class _$StationModelCopyWithImpl<$Res, $Val extends StationModel>
    implements $StationModelCopyWith<$Res> {
  _$StationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? belong = null,
    Object? belongId = null,
    Object? stations = null,
  }) {
    return _then(_value.copyWith(
      belong: null == belong
          ? _value.belong
          : belong // ignore: cast_nullable_to_non_nullable
              as String,
      belongId: null == belongId
          ? _value.belongId
          : belongId // ignore: cast_nullable_to_non_nullable
              as String,
      stations: null == stations
          ? _value.stations
          : stations // ignore: cast_nullable_to_non_nullable
              as List<StationInfoModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StationModelImplCopyWith<$Res>
    implements $StationModelCopyWith<$Res> {
  factory _$$StationModelImplCopyWith(
          _$StationModelImpl value, $Res Function(_$StationModelImpl) then) =
      __$$StationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String belong, String belongId, List<StationInfoModel> stations});
}

/// @nodoc
class __$$StationModelImplCopyWithImpl<$Res>
    extends _$StationModelCopyWithImpl<$Res, _$StationModelImpl>
    implements _$$StationModelImplCopyWith<$Res> {
  __$$StationModelImplCopyWithImpl(
      _$StationModelImpl _value, $Res Function(_$StationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? belong = null,
    Object? belongId = null,
    Object? stations = null,
  }) {
    return _then(_$StationModelImpl(
      belong: null == belong
          ? _value.belong
          : belong // ignore: cast_nullable_to_non_nullable
              as String,
      belongId: null == belongId
          ? _value.belongId
          : belongId // ignore: cast_nullable_to_non_nullable
              as String,
      stations: null == stations
          ? _value._stations
          : stations // ignore: cast_nullable_to_non_nullable
              as List<StationInfoModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StationModelImpl implements _StationModel {
  _$StationModelImpl(
      {required this.belong,
      required this.belongId,
      required final List<StationInfoModel> stations})
      : _stations = stations;

  factory _$StationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StationModelImplFromJson(json);

  @override
  final String belong;
  @override
  final String belongId;
  final List<StationInfoModel> _stations;
  @override
  List<StationInfoModel> get stations {
    if (_stations is EqualUnmodifiableListView) return _stations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stations);
  }

  @override
  String toString() {
    return 'StationModel(belong: $belong, belongId: $belongId, stations: $stations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StationModelImpl &&
            (identical(other.belong, belong) || other.belong == belong) &&
            (identical(other.belongId, belongId) ||
                other.belongId == belongId) &&
            const DeepCollectionEquality().equals(other._stations, _stations));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, belong, belongId,
      const DeepCollectionEquality().hash(_stations));

  /// Create a copy of StationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StationModelImplCopyWith<_$StationModelImpl> get copyWith =>
      __$$StationModelImplCopyWithImpl<_$StationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StationModelImplToJson(
      this,
    );
  }
}

abstract class _StationModel implements StationModel {
  factory _StationModel(
      {required final String belong,
      required final String belongId,
      required final List<StationInfoModel> stations}) = _$StationModelImpl;

  factory _StationModel.fromJson(Map<String, dynamic> json) =
      _$StationModelImpl.fromJson;

  @override
  String get belong;
  @override
  String get belongId;
  @override
  List<StationInfoModel> get stations;

  /// Create a copy of StationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StationModelImplCopyWith<_$StationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StationInfoModel _$StationInfoModelFromJson(Map<String, dynamic> json) {
  return _StationInfoModel.fromJson(json);
}

/// @nodoc
mixin _$StationInfoModel {
  String get station => throw _privateConstructorUsedError;
  String get stationId => throw _privateConstructorUsedError;

  /// Serializes this StationInfoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StationInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StationInfoModelCopyWith<StationInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StationInfoModelCopyWith<$Res> {
  factory $StationInfoModelCopyWith(
          StationInfoModel value, $Res Function(StationInfoModel) then) =
      _$StationInfoModelCopyWithImpl<$Res, StationInfoModel>;
  @useResult
  $Res call({String station, String stationId});
}

/// @nodoc
class _$StationInfoModelCopyWithImpl<$Res, $Val extends StationInfoModel>
    implements $StationInfoModelCopyWith<$Res> {
  _$StationInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StationInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? station = null,
    Object? stationId = null,
  }) {
    return _then(_value.copyWith(
      station: null == station
          ? _value.station
          : station // ignore: cast_nullable_to_non_nullable
              as String,
      stationId: null == stationId
          ? _value.stationId
          : stationId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StationInfoModelImplCopyWith<$Res>
    implements $StationInfoModelCopyWith<$Res> {
  factory _$$StationInfoModelImplCopyWith(_$StationInfoModelImpl value,
          $Res Function(_$StationInfoModelImpl) then) =
      __$$StationInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String station, String stationId});
}

/// @nodoc
class __$$StationInfoModelImplCopyWithImpl<$Res>
    extends _$StationInfoModelCopyWithImpl<$Res, _$StationInfoModelImpl>
    implements _$$StationInfoModelImplCopyWith<$Res> {
  __$$StationInfoModelImplCopyWithImpl(_$StationInfoModelImpl _value,
      $Res Function(_$StationInfoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StationInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? station = null,
    Object? stationId = null,
  }) {
    return _then(_$StationInfoModelImpl(
      station: null == station
          ? _value.station
          : station // ignore: cast_nullable_to_non_nullable
              as String,
      stationId: null == stationId
          ? _value.stationId
          : stationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StationInfoModelImpl implements _StationInfoModel {
  _$StationInfoModelImpl({required this.station, required this.stationId});

  factory _$StationInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StationInfoModelImplFromJson(json);

  @override
  final String station;
  @override
  final String stationId;

  @override
  String toString() {
    return 'StationInfoModel(station: $station, stationId: $stationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StationInfoModelImpl &&
            (identical(other.station, station) || other.station == station) &&
            (identical(other.stationId, stationId) ||
                other.stationId == stationId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, station, stationId);

  /// Create a copy of StationInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StationInfoModelImplCopyWith<_$StationInfoModelImpl> get copyWith =>
      __$$StationInfoModelImplCopyWithImpl<_$StationInfoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StationInfoModelImplToJson(
      this,
    );
  }
}

abstract class _StationInfoModel implements StationInfoModel {
  factory _StationInfoModel(
      {required final String station,
      required final String stationId}) = _$StationInfoModelImpl;

  factory _StationInfoModel.fromJson(Map<String, dynamic> json) =
      _$StationInfoModelImpl.fromJson;

  @override
  String get station;
  @override
  String get stationId;

  /// Create a copy of StationInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StationInfoModelImplCopyWith<_$StationInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
