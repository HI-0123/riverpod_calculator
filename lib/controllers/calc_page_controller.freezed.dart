// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'calc_page_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CalcPageStateTearOff {
  const _$CalcPageStateTearOff();

  _CalcPageState call(
      {double calcNum = 0,
      double displayNum = 0,
      String? calcMark,
      CALC_TYPE? calcType,
      dynamic isCalculated = false}) {
    return _CalcPageState(
      calcNum: calcNum,
      displayNum: displayNum,
      calcMark: calcMark,
      calcType: calcType,
      isCalculated: isCalculated,
    );
  }
}

/// @nodoc
const $CalcPageState = _$CalcPageStateTearOff();

/// @nodoc
mixin _$CalcPageState {
  double get calcNum => throw _privateConstructorUsedError;
  double get displayNum => throw _privateConstructorUsedError;
  String? get calcMark => throw _privateConstructorUsedError;
  CALC_TYPE? get calcType => throw _privateConstructorUsedError;
  dynamic get isCalculated => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalcPageStateCopyWith<CalcPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalcPageStateCopyWith<$Res> {
  factory $CalcPageStateCopyWith(
          CalcPageState value, $Res Function(CalcPageState) then) =
      _$CalcPageStateCopyWithImpl<$Res>;
  $Res call(
      {double calcNum,
      double displayNum,
      String? calcMark,
      CALC_TYPE? calcType,
      dynamic isCalculated});
}

/// @nodoc
class _$CalcPageStateCopyWithImpl<$Res>
    implements $CalcPageStateCopyWith<$Res> {
  _$CalcPageStateCopyWithImpl(this._value, this._then);

  final CalcPageState _value;
  // ignore: unused_field
  final $Res Function(CalcPageState) _then;

  @override
  $Res call({
    Object? calcNum = freezed,
    Object? displayNum = freezed,
    Object? calcMark = freezed,
    Object? calcType = freezed,
    Object? isCalculated = freezed,
  }) {
    return _then(_value.copyWith(
      calcNum: calcNum == freezed
          ? _value.calcNum
          : calcNum // ignore: cast_nullable_to_non_nullable
              as double,
      displayNum: displayNum == freezed
          ? _value.displayNum
          : displayNum // ignore: cast_nullable_to_non_nullable
              as double,
      calcMark: calcMark == freezed
          ? _value.calcMark
          : calcMark // ignore: cast_nullable_to_non_nullable
              as String?,
      calcType: calcType == freezed
          ? _value.calcType
          : calcType // ignore: cast_nullable_to_non_nullable
              as CALC_TYPE?,
      isCalculated: isCalculated == freezed
          ? _value.isCalculated
          : isCalculated // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$CalcPageStateCopyWith<$Res>
    implements $CalcPageStateCopyWith<$Res> {
  factory _$CalcPageStateCopyWith(
          _CalcPageState value, $Res Function(_CalcPageState) then) =
      __$CalcPageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {double calcNum,
      double displayNum,
      String? calcMark,
      CALC_TYPE? calcType,
      dynamic isCalculated});
}

/// @nodoc
class __$CalcPageStateCopyWithImpl<$Res>
    extends _$CalcPageStateCopyWithImpl<$Res>
    implements _$CalcPageStateCopyWith<$Res> {
  __$CalcPageStateCopyWithImpl(
      _CalcPageState _value, $Res Function(_CalcPageState) _then)
      : super(_value, (v) => _then(v as _CalcPageState));

  @override
  _CalcPageState get _value => super._value as _CalcPageState;

  @override
  $Res call({
    Object? calcNum = freezed,
    Object? displayNum = freezed,
    Object? calcMark = freezed,
    Object? calcType = freezed,
    Object? isCalculated = freezed,
  }) {
    return _then(_CalcPageState(
      calcNum: calcNum == freezed
          ? _value.calcNum
          : calcNum // ignore: cast_nullable_to_non_nullable
              as double,
      displayNum: displayNum == freezed
          ? _value.displayNum
          : displayNum // ignore: cast_nullable_to_non_nullable
              as double,
      calcMark: calcMark == freezed
          ? _value.calcMark
          : calcMark // ignore: cast_nullable_to_non_nullable
              as String?,
      calcType: calcType == freezed
          ? _value.calcType
          : calcType // ignore: cast_nullable_to_non_nullable
              as CALC_TYPE?,
      isCalculated:
          isCalculated == freezed ? _value.isCalculated : isCalculated,
    ));
  }
}

/// @nodoc

class _$_CalcPageState extends _CalcPageState {
  const _$_CalcPageState(
      {this.calcNum = 0,
      this.displayNum = 0,
      this.calcMark,
      this.calcType,
      this.isCalculated = false})
      : super._();

  @JsonKey()
  @override
  final double calcNum;
  @JsonKey()
  @override
  final double displayNum;
  @override
  final String? calcMark;
  @override
  final CALC_TYPE? calcType;
  @JsonKey()
  @override
  final dynamic isCalculated;

  @override
  String toString() {
    return 'CalcPageState(calcNum: $calcNum, displayNum: $displayNum, calcMark: $calcMark, calcType: $calcType, isCalculated: $isCalculated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CalcPageState &&
            const DeepCollectionEquality().equals(other.calcNum, calcNum) &&
            const DeepCollectionEquality()
                .equals(other.displayNum, displayNum) &&
            const DeepCollectionEquality().equals(other.calcMark, calcMark) &&
            const DeepCollectionEquality().equals(other.calcType, calcType) &&
            const DeepCollectionEquality()
                .equals(other.isCalculated, isCalculated));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(calcNum),
      const DeepCollectionEquality().hash(displayNum),
      const DeepCollectionEquality().hash(calcMark),
      const DeepCollectionEquality().hash(calcType),
      const DeepCollectionEquality().hash(isCalculated));

  @JsonKey(ignore: true)
  @override
  _$CalcPageStateCopyWith<_CalcPageState> get copyWith =>
      __$CalcPageStateCopyWithImpl<_CalcPageState>(this, _$identity);
}

abstract class _CalcPageState extends CalcPageState {
  const factory _CalcPageState(
      {double calcNum,
      double displayNum,
      String? calcMark,
      CALC_TYPE? calcType,
      dynamic isCalculated}) = _$_CalcPageState;
  const _CalcPageState._() : super._();

  @override
  double get calcNum;
  @override
  double get displayNum;
  @override
  String? get calcMark;
  @override
  CALC_TYPE? get calcType;
  @override
  dynamic get isCalculated;
  @override
  @JsonKey(ignore: true)
  _$CalcPageStateCopyWith<_CalcPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
