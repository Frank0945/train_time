// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'station_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StationEntity {
  String get belong => throw _privateConstructorUsedError;
  String get belongId => throw _privateConstructorUsedError;
  List<StationInfoEntity> get stations => throw _privateConstructorUsedError;

  /// Create a copy of StationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StationEntityCopyWith<StationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StationEntityCopyWith<$Res> {
  factory $StationEntityCopyWith(
          StationEntity value, $Res Function(StationEntity) then) =
      _$StationEntityCopyWithImpl<$Res, StationEntity>;
  @useResult
  $Res call({String belong, String belongId, List<StationInfoEntity> stations});
}

/// @nodoc
class _$StationEntityCopyWithImpl<$Res, $Val extends StationEntity>
    implements $StationEntityCopyWith<$Res> {
  _$StationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StationEntity
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
              as List<StationInfoEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StationEntityImplCopyWith<$Res>
    implements $StationEntityCopyWith<$Res> {
  factory _$$StationEntityImplCopyWith(
          _$StationEntityImpl value, $Res Function(_$StationEntityImpl) then) =
      __$$StationEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String belong, String belongId, List<StationInfoEntity> stations});
}

/// @nodoc
class __$$StationEntityImplCopyWithImpl<$Res>
    extends _$StationEntityCopyWithImpl<$Res, _$StationEntityImpl>
    implements _$$StationEntityImplCopyWith<$Res> {
  __$$StationEntityImplCopyWithImpl(
      _$StationEntityImpl _value, $Res Function(_$StationEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of StationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? belong = null,
    Object? belongId = null,
    Object? stations = null,
  }) {
    return _then(_$StationEntityImpl(
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
              as List<StationInfoEntity>,
    ));
  }
}

/// @nodoc

class _$StationEntityImpl implements _StationEntity {
  _$StationEntityImpl(
      {required this.belong,
      required this.belongId,
      required final List<StationInfoEntity> stations})
      : _stations = stations;

  @override
  final String belong;
  @override
  final String belongId;
  final List<StationInfoEntity> _stations;
  @override
  List<StationInfoEntity> get stations {
    if (_stations is EqualUnmodifiableListView) return _stations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stations);
  }

  @override
  String toString() {
    return 'StationEntity(belong: $belong, belongId: $belongId, stations: $stations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StationEntityImpl &&
            (identical(other.belong, belong) || other.belong == belong) &&
            (identical(other.belongId, belongId) ||
                other.belongId == belongId) &&
            const DeepCollectionEquality().equals(other._stations, _stations));
  }

  @override
  int get hashCode => Object.hash(runtimeType, belong, belongId,
      const DeepCollectionEquality().hash(_stations));

  /// Create a copy of StationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StationEntityImplCopyWith<_$StationEntityImpl> get copyWith =>
      __$$StationEntityImplCopyWithImpl<_$StationEntityImpl>(this, _$identity);
}

abstract class _StationEntity implements StationEntity {
  factory _StationEntity(
      {required final String belong,
      required final String belongId,
      required final List<StationInfoEntity> stations}) = _$StationEntityImpl;

  @override
  String get belong;
  @override
  String get belongId;
  @override
  List<StationInfoEntity> get stations;

  /// Create a copy of StationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StationEntityImplCopyWith<_$StationEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StationInfoEntity {
  String get station => throw _privateConstructorUsedError;
  String get stationId => throw _privateConstructorUsedError;

  /// Create a copy of StationInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StationInfoEntityCopyWith<StationInfoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StationInfoEntityCopyWith<$Res> {
  factory $StationInfoEntityCopyWith(
          StationInfoEntity value, $Res Function(StationInfoEntity) then) =
      _$StationInfoEntityCopyWithImpl<$Res, StationInfoEntity>;
  @useResult
  $Res call({String station, String stationId});
}

/// @nodoc
class _$StationInfoEntityCopyWithImpl<$Res, $Val extends StationInfoEntity>
    implements $StationInfoEntityCopyWith<$Res> {
  _$StationInfoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StationInfoEntity
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
abstract class _$$StationInfoEntityImplCopyWith<$Res>
    implements $StationInfoEntityCopyWith<$Res> {
  factory _$$StationInfoEntityImplCopyWith(_$StationInfoEntityImpl value,
          $Res Function(_$StationInfoEntityImpl) then) =
      __$$StationInfoEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String station, String stationId});
}

/// @nodoc
class __$$StationInfoEntityImplCopyWithImpl<$Res>
    extends _$StationInfoEntityCopyWithImpl<$Res, _$StationInfoEntityImpl>
    implements _$$StationInfoEntityImplCopyWith<$Res> {
  __$$StationInfoEntityImplCopyWithImpl(_$StationInfoEntityImpl _value,
      $Res Function(_$StationInfoEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of StationInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? station = null,
    Object? stationId = null,
  }) {
    return _then(_$StationInfoEntityImpl(
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

class _$StationInfoEntityImpl implements _StationInfoEntity {
  _$StationInfoEntityImpl({required this.station, required this.stationId});

  @override
  final String station;
  @override
  final String stationId;

  @override
  String toString() {
    return 'StationInfoEntity(station: $station, stationId: $stationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StationInfoEntityImpl &&
            (identical(other.station, station) || other.station == station) &&
            (identical(other.stationId, stationId) ||
                other.stationId == stationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, station, stationId);

  /// Create a copy of StationInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StationInfoEntityImplCopyWith<_$StationInfoEntityImpl> get copyWith =>
      __$$StationInfoEntityImplCopyWithImpl<_$StationInfoEntityImpl>(
          this, _$identity);
}

abstract class _StationInfoEntity implements StationInfoEntity {
  factory _StationInfoEntity(
      {required final String station,
      required final String stationId}) = _$StationInfoEntityImpl;

  @override
  String get station;
  @override
  String get stationId;

  /// Create a copy of StationInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StationInfoEntityImplCopyWith<_$StationInfoEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
