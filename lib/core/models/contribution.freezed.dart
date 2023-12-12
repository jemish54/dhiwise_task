// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contribution.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Contribution _$ContributionFromJson(Map<String, dynamic> json) {
  return _Contribution.fromJson(json);
}

/// @nodoc
mixin _$Contribution {
  String get title => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  @ColorConvertor()
  Color get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContributionCopyWith<Contribution> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContributionCopyWith<$Res> {
  factory $ContributionCopyWith(
          Contribution value, $Res Function(Contribution) then) =
      _$ContributionCopyWithImpl<$Res, Contribution>;
  @useResult
  $Res call({String title, double amount, @ColorConvertor() Color color});
}

/// @nodoc
class _$ContributionCopyWithImpl<$Res, $Val extends Contribution>
    implements $ContributionCopyWith<$Res> {
  _$ContributionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? amount = null,
    Object? color = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContributionImplCopyWith<$Res>
    implements $ContributionCopyWith<$Res> {
  factory _$$ContributionImplCopyWith(
          _$ContributionImpl value, $Res Function(_$ContributionImpl) then) =
      __$$ContributionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, double amount, @ColorConvertor() Color color});
}

/// @nodoc
class __$$ContributionImplCopyWithImpl<$Res>
    extends _$ContributionCopyWithImpl<$Res, _$ContributionImpl>
    implements _$$ContributionImplCopyWith<$Res> {
  __$$ContributionImplCopyWithImpl(
      _$ContributionImpl _value, $Res Function(_$ContributionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? amount = null,
    Object? color = null,
  }) {
    return _then(_$ContributionImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContributionImpl implements _Contribution {
  const _$ContributionImpl(
      {required this.title,
      required this.amount,
      @ColorConvertor() required this.color});

  factory _$ContributionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContributionImplFromJson(json);

  @override
  final String title;
  @override
  final double amount;
  @override
  @ColorConvertor()
  final Color color;

  @override
  String toString() {
    return 'Contribution(title: $title, amount: $amount, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContributionImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, amount, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContributionImplCopyWith<_$ContributionImpl> get copyWith =>
      __$$ContributionImplCopyWithImpl<_$ContributionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContributionImplToJson(
      this,
    );
  }
}

abstract class _Contribution implements Contribution {
  const factory _Contribution(
      {required final String title,
      required final double amount,
      @ColorConvertor() required final Color color}) = _$ContributionImpl;

  factory _Contribution.fromJson(Map<String, dynamic> json) =
      _$ContributionImpl.fromJson;

  @override
  String get title;
  @override
  double get amount;
  @override
  @ColorConvertor()
  Color get color;
  @override
  @JsonKey(ignore: true)
  _$$ContributionImplCopyWith<_$ContributionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
