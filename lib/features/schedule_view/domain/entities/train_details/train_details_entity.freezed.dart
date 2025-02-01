// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'train_details_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TrainDetailsEntity {
  List<String> get tags => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;
  List<TrainDetailsStationEntity> get stations =>
      throw _privateConstructorUsedError;

  /// Create a copy of TrainDetailsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrainDetailsEntityCopyWith<TrainDetailsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainDetailsEntityCopyWith<$Res> {
  factory $TrainDetailsEntityCopyWith(
          TrainDetailsEntity value, $Res Function(TrainDetailsEntity) then) =
      _$TrainDetailsEntityCopyWithImpl<$Res, TrainDetailsEntity>;
  @useResult
  $Res call(
      {List<String> tags,
      String note,
      List<TrainDetailsStationEntity> stations});
}

/// @nodoc
class _$TrainDetailsEntityCopyWithImpl<$Res, $Val extends TrainDetailsEntity>
    implements $TrainDetailsEntityCopyWith<$Res> {
  _$TrainDetailsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrainDetailsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tags = null,
    Object? note = null,
    Object? stations = null,
  }) {
    return _then(_value.copyWith(
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      stations: null == stations
          ? _value.stations
          : stations // ignore: cast_nullable_to_non_nullable
              as List<TrainDetailsStationEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrainDetailsEntityImplCopyWith<$Res>
    implements $TrainDetailsEntityCopyWith<$Res> {
  factory _$$TrainDetailsEntityImplCopyWith(_$TrainDetailsEntityImpl value,
          $Res Function(_$TrainDetailsEntityImpl) then) =
      __$$TrainDetailsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> tags,
      String note,
      List<TrainDetailsStationEntity> stations});
}

/// @nodoc
class __$$TrainDetailsEntityImplCopyWithImpl<$Res>
    extends _$TrainDetailsEntityCopyWithImpl<$Res, _$TrainDetailsEntityImpl>
    implements _$$TrainDetailsEntityImplCopyWith<$Res> {
  __$$TrainDetailsEntityImplCopyWithImpl(_$TrainDetailsEntityImpl _value,
      $Res Function(_$TrainDetailsEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrainDetailsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tags = null,
    Object? note = null,
    Object? stations = null,
  }) {
    return _then(_$TrainDetailsEntityImpl(
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      stations: null == stations
          ? _value._stations
          : stations // ignore: cast_nullable_to_non_nullable
              as List<TrainDetailsStationEntity>,
    ));
  }
}

/// @nodoc

class _$TrainDetailsEntityImpl implements _TrainDetailsEntity {
  _$TrainDetailsEntityImpl(
      {required final List<String> tags,
      required this.note,
      required final List<TrainDetailsStationEntity> stations})
      : _tags = tags,
        _stations = stations;

  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final String note;
  final List<TrainDetailsStationEntity> _stations;
  @override
  List<TrainDetailsStationEntity> get stations {
    if (_stations is EqualUnmodifiableListView) return _stations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stations);
  }

  @override
  String toString() {
    return 'TrainDetailsEntity(tags: $tags, note: $note, stations: $stations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainDetailsEntityImpl &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.note, note) || other.note == note) &&
            const DeepCollectionEquality().equals(other._stations, _stations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tags),
      note,
      const DeepCollectionEquality().hash(_stations));

  /// Create a copy of TrainDetailsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrainDetailsEntityImplCopyWith<_$TrainDetailsEntityImpl> get copyWith =>
      __$$TrainDetailsEntityImplCopyWithImpl<_$TrainDetailsEntityImpl>(
          this, _$identity);
}

abstract class _TrainDetailsEntity implements TrainDetailsEntity {
  factory _TrainDetailsEntity(
          {required final List<String> tags,
          required final String note,
          required final List<TrainDetailsStationEntity> stations}) =
      _$TrainDetailsEntityImpl;

  @override
  List<String> get tags;
  @override
  String get note;
  @override
  List<TrainDetailsStationEntity> get stations;

  /// Create a copy of TrainDetailsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrainDetailsEntityImplCopyWith<_$TrainDetailsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TrainDetailsStationEntity {
  String get station => throw _privateConstructorUsedError;
  String get departureTime => throw _privateConstructorUsedError;
  String get arrivalTime => throw _privateConstructorUsedError;

  /// Create a copy of TrainDetailsStationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrainDetailsStationEntityCopyWith<TrainDetailsStationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainDetailsStationEntityCopyWith<$Res> {
  factory $TrainDetailsStationEntityCopyWith(TrainDetailsStationEntity value,
          $Res Function(TrainDetailsStationEntity) then) =
      _$TrainDetailsStationEntityCopyWithImpl<$Res, TrainDetailsStationEntity>;
  @useResult
  $Res call({String station, String departureTime, String arrivalTime});
}

/// @nodoc
class _$TrainDetailsStationEntityCopyWithImpl<$Res,
        $Val extends TrainDetailsStationEntity>
    implements $TrainDetailsStationEntityCopyWith<$Res> {
  _$TrainDetailsStationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrainDetailsStationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? station = null,
    Object? departureTime = null,
    Object? arrivalTime = null,
  }) {
    return _then(_value.copyWith(
      station: null == station
          ? _value.station
          : station // ignore: cast_nullable_to_non_nullable
              as String,
      departureTime: null == departureTime
          ? _value.departureTime
          : departureTime // ignore: cast_nullable_to_non_nullable
              as String,
      arrivalTime: null == arrivalTime
          ? _value.arrivalTime
          : arrivalTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrainDetailsStationEntityImplCopyWith<$Res>
    implements $TrainDetailsStationEntityCopyWith<$Res> {
  factory _$$TrainDetailsStationEntityImplCopyWith(
          _$TrainDetailsStationEntityImpl value,
          $Res Function(_$TrainDetailsStationEntityImpl) then) =
      __$$TrainDetailsStationEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String station, String departureTime, String arrivalTime});
}

/// @nodoc
class __$$TrainDetailsStationEntityImplCopyWithImpl<$Res>
    extends _$TrainDetailsStationEntityCopyWithImpl<$Res,
        _$TrainDetailsStationEntityImpl>
    implements _$$TrainDetailsStationEntityImplCopyWith<$Res> {
  __$$TrainDetailsStationEntityImplCopyWithImpl(
      _$TrainDetailsStationEntityImpl _value,
      $Res Function(_$TrainDetailsStationEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrainDetailsStationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? station = null,
    Object? departureTime = null,
    Object? arrivalTime = null,
  }) {
    return _then(_$TrainDetailsStationEntityImpl(
      station: null == station
          ? _value.station
          : station // ignore: cast_nullable_to_non_nullable
              as String,
      departureTime: null == departureTime
          ? _value.departureTime
          : departureTime // ignore: cast_nullable_to_non_nullable
              as String,
      arrivalTime: null == arrivalTime
          ? _value.arrivalTime
          : arrivalTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TrainDetailsStationEntityImpl implements _TrainDetailsStationEntity {
  _$TrainDetailsStationEntityImpl(
      {required this.station,
      required this.departureTime,
      required this.arrivalTime});

  @override
  final String station;
  @override
  final String departureTime;
  @override
  final String arrivalTime;

  @override
  String toString() {
    return 'TrainDetailsStationEntity(station: $station, departureTime: $departureTime, arrivalTime: $arrivalTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainDetailsStationEntityImpl &&
            (identical(other.station, station) || other.station == station) &&
            (identical(other.departureTime, departureTime) ||
                other.departureTime == departureTime) &&
            (identical(other.arrivalTime, arrivalTime) ||
                other.arrivalTime == arrivalTime));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, station, departureTime, arrivalTime);

  /// Create a copy of TrainDetailsStationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrainDetailsStationEntityImplCopyWith<_$TrainDetailsStationEntityImpl>
      get copyWith => __$$TrainDetailsStationEntityImplCopyWithImpl<
          _$TrainDetailsStationEntityImpl>(this, _$identity);
}

abstract class _TrainDetailsStationEntity implements TrainDetailsStationEntity {
  factory _TrainDetailsStationEntity(
      {required final String station,
      required final String departureTime,
      required final String arrivalTime}) = _$TrainDetailsStationEntityImpl;

  @override
  String get station;
  @override
  String get departureTime;
  @override
  String get arrivalTime;

  /// Create a copy of TrainDetailsStationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrainDetailsStationEntityImplCopyWith<_$TrainDetailsStationEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
