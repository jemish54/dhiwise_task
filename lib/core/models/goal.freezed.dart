// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'goal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Goal _$GoalFromJson(Map<String, dynamic> json) {
  return _Goal.fromJson(json);
}

/// @nodoc
mixin _$Goal {
  String get title => throw _privateConstructorUsedError;
  double get targetAmount => throw _privateConstructorUsedError;
  DateTime get expectedDate => throw _privateConstructorUsedError;
  List<Contribution> get contributionList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GoalCopyWith<Goal> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoalCopyWith<$Res> {
  factory $GoalCopyWith(Goal value, $Res Function(Goal) then) =
      _$GoalCopyWithImpl<$Res, Goal>;
  @useResult
  $Res call(
      {String title,
      double targetAmount,
      DateTime expectedDate,
      List<Contribution> contributionList});
}

/// @nodoc
class _$GoalCopyWithImpl<$Res, $Val extends Goal>
    implements $GoalCopyWith<$Res> {
  _$GoalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? targetAmount = null,
    Object? expectedDate = null,
    Object? contributionList = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      targetAmount: null == targetAmount
          ? _value.targetAmount
          : targetAmount // ignore: cast_nullable_to_non_nullable
              as double,
      expectedDate: null == expectedDate
          ? _value.expectedDate
          : expectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      contributionList: null == contributionList
          ? _value.contributionList
          : contributionList // ignore: cast_nullable_to_non_nullable
              as List<Contribution>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoalImplCopyWith<$Res> implements $GoalCopyWith<$Res> {
  factory _$$GoalImplCopyWith(
          _$GoalImpl value, $Res Function(_$GoalImpl) then) =
      __$$GoalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      double targetAmount,
      DateTime expectedDate,
      List<Contribution> contributionList});
}

/// @nodoc
class __$$GoalImplCopyWithImpl<$Res>
    extends _$GoalCopyWithImpl<$Res, _$GoalImpl>
    implements _$$GoalImplCopyWith<$Res> {
  __$$GoalImplCopyWithImpl(_$GoalImpl _value, $Res Function(_$GoalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? targetAmount = null,
    Object? expectedDate = null,
    Object? contributionList = null,
  }) {
    return _then(_$GoalImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      targetAmount: null == targetAmount
          ? _value.targetAmount
          : targetAmount // ignore: cast_nullable_to_non_nullable
              as double,
      expectedDate: null == expectedDate
          ? _value.expectedDate
          : expectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      contributionList: null == contributionList
          ? _value._contributionList
          : contributionList // ignore: cast_nullable_to_non_nullable
              as List<Contribution>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$GoalImpl implements _Goal {
  const _$GoalImpl(
      {required this.title,
      required this.targetAmount,
      required this.expectedDate,
      final List<Contribution> contributionList = const []})
      : _contributionList = contributionList;

  factory _$GoalImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoalImplFromJson(json);

  @override
  final String title;
  @override
  final double targetAmount;
  @override
  final DateTime expectedDate;
  final List<Contribution> _contributionList;
  @override
  @JsonKey()
  List<Contribution> get contributionList {
    if (_contributionList is EqualUnmodifiableListView)
      return _contributionList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contributionList);
  }

  @override
  String toString() {
    return 'Goal(title: $title, targetAmount: $targetAmount, expectedDate: $expectedDate, contributionList: $contributionList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoalImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.targetAmount, targetAmount) ||
                other.targetAmount == targetAmount) &&
            (identical(other.expectedDate, expectedDate) ||
                other.expectedDate == expectedDate) &&
            const DeepCollectionEquality()
                .equals(other._contributionList, _contributionList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, targetAmount,
      expectedDate, const DeepCollectionEquality().hash(_contributionList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoalImplCopyWith<_$GoalImpl> get copyWith =>
      __$$GoalImplCopyWithImpl<_$GoalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoalImplToJson(
      this,
    );
  }
}

abstract class _Goal implements Goal {
  const factory _Goal(
      {required final String title,
      required final double targetAmount,
      required final DateTime expectedDate,
      final List<Contribution> contributionList}) = _$GoalImpl;

  factory _Goal.fromJson(Map<String, dynamic> json) = _$GoalImpl.fromJson;

  @override
  String get title;
  @override
  double get targetAmount;
  @override
  DateTime get expectedDate;
  @override
  List<Contribution> get contributionList;
  @override
  @JsonKey(ignore: true)
  _$$GoalImplCopyWith<_$GoalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
