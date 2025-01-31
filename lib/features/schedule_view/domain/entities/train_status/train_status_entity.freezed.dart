// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'train_status_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TrainStatusEntity {
  String get trainNo => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  /// Create a copy of TrainStatusEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrainStatusEntityCopyWith<TrainStatusEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainStatusEntityCopyWith<$Res> {
  factory $TrainStatusEntityCopyWith(
          TrainStatusEntity value, $Res Function(TrainStatusEntity) then) =
      _$TrainStatusEntityCopyWithImpl<$Res, TrainStatusEntity>;
  @useResult
  $Res call({String trainNo, String status});
}

/// @nodoc
class _$TrainStatusEntityCopyWithImpl<$Res, $Val extends TrainStatusEntity>
    implements $TrainStatusEntityCopyWith<$Res> {
  _$TrainStatusEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrainStatusEntity
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
abstract class _$$TrainStatusEntityImplCopyWith<$Res>
    implements $TrainStatusEntityCopyWith<$Res> {
  factory _$$TrainStatusEntityImplCopyWith(_$TrainStatusEntityImpl value,
          $Res Function(_$TrainStatusEntityImpl) then) =
      __$$TrainStatusEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String trainNo, String status});
}

/// @nodoc
class __$$TrainStatusEntityImplCopyWithImpl<$Res>
    extends _$TrainStatusEntityCopyWithImpl<$Res, _$TrainStatusEntityImpl>
    implements _$$TrainStatusEntityImplCopyWith<$Res> {
  __$$TrainStatusEntityImplCopyWithImpl(_$TrainStatusEntityImpl _value,
      $Res Function(_$TrainStatusEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrainStatusEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trainNo = null,
    Object? status = null,
  }) {
    return _then(_$TrainStatusEntityImpl(
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

class _$TrainStatusEntityImpl implements _TrainStatusEntity {
  _$TrainStatusEntityImpl({required this.trainNo, required this.status});

  @override
  final String trainNo;
  @override
  final String status;

  @override
  String toString() {
    return 'TrainStatusEntity(trainNo: $trainNo, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainStatusEntityImpl &&
            (identical(other.trainNo, trainNo) || other.trainNo == trainNo) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trainNo, status);

  /// Create a copy of TrainStatusEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrainStatusEntityImplCopyWith<_$TrainStatusEntityImpl> get copyWith =>
      __$$TrainStatusEntityImplCopyWithImpl<_$TrainStatusEntityImpl>(
          this, _$identity);
}

abstract class _TrainStatusEntity implements TrainStatusEntity {
  factory _TrainStatusEntity(
      {required final String trainNo,
      required final String status}) = _$TrainStatusEntityImpl;

  @override
  String get trainNo;
  @override
  String get status;

  /// Create a copy of TrainStatusEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrainStatusEntityImplCopyWith<_$TrainStatusEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
