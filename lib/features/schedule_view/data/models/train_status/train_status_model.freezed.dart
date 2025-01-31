// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'train_status_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TrainStatusModel _$TrainStatusModelFromJson(Map<String, dynamic> json) {
  return _TrainStatusModel.fromJson(json);
}

/// @nodoc
mixin _$TrainStatusModel {
  String get trainNo => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  /// Serializes this TrainStatusModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TrainStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrainStatusModelCopyWith<TrainStatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainStatusModelCopyWith<$Res> {
  factory $TrainStatusModelCopyWith(
          TrainStatusModel value, $Res Function(TrainStatusModel) then) =
      _$TrainStatusModelCopyWithImpl<$Res, TrainStatusModel>;
  @useResult
  $Res call({String trainNo, String status});
}

/// @nodoc
class _$TrainStatusModelCopyWithImpl<$Res, $Val extends TrainStatusModel>
    implements $TrainStatusModelCopyWith<$Res> {
  _$TrainStatusModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrainStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trainNo = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      trainNo: null == trainNo
          ? _value.trainNo
          : trainNo // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrainStatusModelImplCopyWith<$Res>
    implements $TrainStatusModelCopyWith<$Res> {
  factory _$$TrainStatusModelImplCopyWith(_$TrainStatusModelImpl value,
          $Res Function(_$TrainStatusModelImpl) then) =
      __$$TrainStatusModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String trainNo, String status});
}

/// @nodoc
class __$$TrainStatusModelImplCopyWithImpl<$Res>
    extends _$TrainStatusModelCopyWithImpl<$Res, _$TrainStatusModelImpl>
    implements _$$TrainStatusModelImplCopyWith<$Res> {
  __$$TrainStatusModelImplCopyWithImpl(_$TrainStatusModelImpl _value,
      $Res Function(_$TrainStatusModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrainStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trainNo = null,
    Object? status = null,
  }) {
    return _then(_$TrainStatusModelImpl(
      trainNo: null == trainNo
          ? _value.trainNo
          : trainNo // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrainStatusModelImpl implements _TrainStatusModel {
  _$TrainStatusModelImpl({required this.trainNo, required this.status});

  factory _$TrainStatusModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrainStatusModelImplFromJson(json);

  @override
  final String trainNo;
  @override
  final String status;

  @override
  String toString() {
    return 'TrainStatusModel(trainNo: $trainNo, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainStatusModelImpl &&
            (identical(other.trainNo, trainNo) || other.trainNo == trainNo) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, trainNo, status);

  /// Create a copy of TrainStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrainStatusModelImplCopyWith<_$TrainStatusModelImpl> get copyWith =>
      __$$TrainStatusModelImplCopyWithImpl<_$TrainStatusModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrainStatusModelImplToJson(
      this,
    );
  }
}

abstract class _TrainStatusModel implements TrainStatusModel {
  factory _TrainStatusModel(
      {required final String trainNo,
      required final String status}) = _$TrainStatusModelImpl;

  factory _TrainStatusModel.fromJson(Map<String, dynamic> json) =
      _$TrainStatusModelImpl.fromJson;

  @override
  String get trainNo;
  @override
  String get status;

  /// Create a copy of TrainStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrainStatusModelImplCopyWith<_$TrainStatusModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
