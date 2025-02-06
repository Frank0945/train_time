// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'train_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TrainDetailsModel _$TrainDetailsModelFromJson(Map<String, dynamic> json) {
  return _TrainDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$TrainDetailsModel {
  List<String> get tags => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;
  List<TrainDetailsStationModel> get stations =>
      throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  /// Serializes this TrainDetailsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TrainDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrainDetailsModelCopyWith<TrainDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainDetailsModelCopyWith<$Res> {
  factory $TrainDetailsModelCopyWith(
          TrainDetailsModel value, $Res Function(TrainDetailsModel) then) =
      _$TrainDetailsModelCopyWithImpl<$Res, TrainDetailsModel>;
  @useResult
  $Res call(
      {List<String> tags,
      String note,
      List<TrainDetailsStationModel> stations,
      String status});
}

/// @nodoc
class _$TrainDetailsModelCopyWithImpl<$Res, $Val extends TrainDetailsModel>
    implements $TrainDetailsModelCopyWith<$Res> {
  _$TrainDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrainDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tags = null,
    Object? note = null,
    Object? stations = null,
    Object? status = null,
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
              as List<TrainDetailsStationModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrainDetailsModelImplCopyWith<$Res>
    implements $TrainDetailsModelCopyWith<$Res> {
  factory _$$TrainDetailsModelImplCopyWith(_$TrainDetailsModelImpl value,
          $Res Function(_$TrainDetailsModelImpl) then) =
      __$$TrainDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> tags,
      String note,
      List<TrainDetailsStationModel> stations,
      String status});
}

/// @nodoc
class __$$TrainDetailsModelImplCopyWithImpl<$Res>
    extends _$TrainDetailsModelCopyWithImpl<$Res, _$TrainDetailsModelImpl>
    implements _$$TrainDetailsModelImplCopyWith<$Res> {
  __$$TrainDetailsModelImplCopyWithImpl(_$TrainDetailsModelImpl _value,
      $Res Function(_$TrainDetailsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrainDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tags = null,
    Object? note = null,
    Object? stations = null,
    Object? status = null,
  }) {
    return _then(_$TrainDetailsModelImpl(
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
              as List<TrainDetailsStationModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrainDetailsModelImpl implements _TrainDetailsModel {
  _$TrainDetailsModelImpl(
      {required final List<String> tags,
      required this.note,
      required final List<TrainDetailsStationModel> stations,
      required this.status})
      : _tags = tags,
        _stations = stations;

  factory _$TrainDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrainDetailsModelImplFromJson(json);

  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final String note;
  final List<TrainDetailsStationModel> _stations;
  @override
  List<TrainDetailsStationModel> get stations {
    if (_stations is EqualUnmodifiableListView) return _stations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stations);
  }

  @override
  final String status;

  @override
  String toString() {
    return 'TrainDetailsModel(tags: $tags, note: $note, stations: $stations, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainDetailsModelImpl &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.note, note) || other.note == note) &&
            const DeepCollectionEquality().equals(other._stations, _stations) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tags),
      note,
      const DeepCollectionEquality().hash(_stations),
      status);

  /// Create a copy of TrainDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrainDetailsModelImplCopyWith<_$TrainDetailsModelImpl> get copyWith =>
      __$$TrainDetailsModelImplCopyWithImpl<_$TrainDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrainDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _TrainDetailsModel implements TrainDetailsModel {
  factory _TrainDetailsModel(
      {required final List<String> tags,
      required final String note,
      required final List<TrainDetailsStationModel> stations,
      required final String status}) = _$TrainDetailsModelImpl;

  factory _TrainDetailsModel.fromJson(Map<String, dynamic> json) =
      _$TrainDetailsModelImpl.fromJson;

  @override
  List<String> get tags;
  @override
  String get note;
  @override
  List<TrainDetailsStationModel> get stations;
  @override
  String get status;

  /// Create a copy of TrainDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrainDetailsModelImplCopyWith<_$TrainDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TrainDetailsStationModel _$TrainDetailsStationModelFromJson(
    Map<String, dynamic> json) {
  return _TrainDetailsStationModel.fromJson(json);
}

/// @nodoc
mixin _$TrainDetailsStationModel {
  String get station => throw _privateConstructorUsedError;
  String get departureTime => throw _privateConstructorUsedError;
  String get arrivalTime => throw _privateConstructorUsedError;

  /// Serializes this TrainDetailsStationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TrainDetailsStationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrainDetailsStationModelCopyWith<TrainDetailsStationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainDetailsStationModelCopyWith<$Res> {
  factory $TrainDetailsStationModelCopyWith(TrainDetailsStationModel value,
          $Res Function(TrainDetailsStationModel) then) =
      _$TrainDetailsStationModelCopyWithImpl<$Res, TrainDetailsStationModel>;
  @useResult
  $Res call({String station, String departureTime, String arrivalTime});
}

/// @nodoc
class _$TrainDetailsStationModelCopyWithImpl<$Res,
        $Val extends TrainDetailsStationModel>
    implements $TrainDetailsStationModelCopyWith<$Res> {
  _$TrainDetailsStationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrainDetailsStationModel
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
abstract class _$$TrainDetailsStationModelImplCopyWith<$Res>
    implements $TrainDetailsStationModelCopyWith<$Res> {
  factory _$$TrainDetailsStationModelImplCopyWith(
          _$TrainDetailsStationModelImpl value,
          $Res Function(_$TrainDetailsStationModelImpl) then) =
      __$$TrainDetailsStationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String station, String departureTime, String arrivalTime});
}

/// @nodoc
class __$$TrainDetailsStationModelImplCopyWithImpl<$Res>
    extends _$TrainDetailsStationModelCopyWithImpl<$Res,
        _$TrainDetailsStationModelImpl>
    implements _$$TrainDetailsStationModelImplCopyWith<$Res> {
  __$$TrainDetailsStationModelImplCopyWithImpl(
      _$TrainDetailsStationModelImpl _value,
      $Res Function(_$TrainDetailsStationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrainDetailsStationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? station = null,
    Object? departureTime = null,
    Object? arrivalTime = null,
  }) {
    return _then(_$TrainDetailsStationModelImpl(
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
@JsonSerializable()
class _$TrainDetailsStationModelImpl implements _TrainDetailsStationModel {
  _$TrainDetailsStationModelImpl(
      {required this.station,
      required this.departureTime,
      required this.arrivalTime});

  factory _$TrainDetailsStationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrainDetailsStationModelImplFromJson(json);

  @override
  final String station;
  @override
  final String departureTime;
  @override
  final String arrivalTime;

  @override
  String toString() {
    return 'TrainDetailsStationModel(station: $station, departureTime: $departureTime, arrivalTime: $arrivalTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainDetailsStationModelImpl &&
            (identical(other.station, station) || other.station == station) &&
            (identical(other.departureTime, departureTime) ||
                other.departureTime == departureTime) &&
            (identical(other.arrivalTime, arrivalTime) ||
                other.arrivalTime == arrivalTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, station, departureTime, arrivalTime);

  /// Create a copy of TrainDetailsStationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrainDetailsStationModelImplCopyWith<_$TrainDetailsStationModelImpl>
      get copyWith => __$$TrainDetailsStationModelImplCopyWithImpl<
          _$TrainDetailsStationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrainDetailsStationModelImplToJson(
      this,
    );
  }
}

abstract class _TrainDetailsStationModel implements TrainDetailsStationModel {
  factory _TrainDetailsStationModel(
      {required final String station,
      required final String departureTime,
      required final String arrivalTime}) = _$TrainDetailsStationModelImpl;

  factory _TrainDetailsStationModel.fromJson(Map<String, dynamic> json) =
      _$TrainDetailsStationModelImpl.fromJson;

  @override
  String get station;
  @override
  String get departureTime;
  @override
  String get arrivalTime;

  /// Create a copy of TrainDetailsStationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrainDetailsStationModelImplCopyWith<_$TrainDetailsStationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
