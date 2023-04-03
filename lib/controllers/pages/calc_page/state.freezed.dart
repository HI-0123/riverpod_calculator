// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CalcPageState {
  double get calcNum => throw _privateConstructorUsedError;
  String get displayNum => throw _privateConstructorUsedError;
  FunctionType? get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalcPageStateCopyWith<CalcPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalcPageStateCopyWith<$Res> {
  factory $CalcPageStateCopyWith(
          CalcPageState value, $Res Function(CalcPageState) then) =
      _$CalcPageStateCopyWithImpl<$Res, CalcPageState>;
  @useResult
  $Res call({double calcNum, String displayNum, FunctionType? type});
}

/// @nodoc
class _$CalcPageStateCopyWithImpl<$Res, $Val extends CalcPageState>
    implements $CalcPageStateCopyWith<$Res> {
  _$CalcPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calcNum = null,
    Object? displayNum = null,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      calcNum: null == calcNum
          ? _value.calcNum
          : calcNum // ignore: cast_nullable_to_non_nullable
              as double,
      displayNum: null == displayNum
          ? _value.displayNum
          : displayNum // ignore: cast_nullable_to_non_nullable
              as String,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FunctionType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CalcPageStateCopyWith<$Res>
    implements $CalcPageStateCopyWith<$Res> {
  factory _$$_CalcPageStateCopyWith(
          _$_CalcPageState value, $Res Function(_$_CalcPageState) then) =
      __$$_CalcPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double calcNum, String displayNum, FunctionType? type});
}

/// @nodoc
class __$$_CalcPageStateCopyWithImpl<$Res>
    extends _$CalcPageStateCopyWithImpl<$Res, _$_CalcPageState>
    implements _$$_CalcPageStateCopyWith<$Res> {
  __$$_CalcPageStateCopyWithImpl(
      _$_CalcPageState _value, $Res Function(_$_CalcPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calcNum = null,
    Object? displayNum = null,
    Object? type = freezed,
  }) {
    return _then(_$_CalcPageState(
      calcNum: null == calcNum
          ? _value.calcNum
          : calcNum // ignore: cast_nullable_to_non_nullable
              as double,
      displayNum: null == displayNum
          ? _value.displayNum
          : displayNum // ignore: cast_nullable_to_non_nullable
              as String,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FunctionType?,
    ));
  }
}

/// @nodoc

class _$_CalcPageState extends _CalcPageState {
  const _$_CalcPageState({this.calcNum = 0, this.displayNum = '0', this.type})
      : super._();

  @override
  @JsonKey()
  final double calcNum;
  @override
  @JsonKey()
  final String displayNum;
  @override
  final FunctionType? type;

  @override
  String toString() {
    return 'CalcPageState(calcNum: $calcNum, displayNum: $displayNum, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CalcPageState &&
            (identical(other.calcNum, calcNum) || other.calcNum == calcNum) &&
            (identical(other.displayNum, displayNum) ||
                other.displayNum == displayNum) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, calcNum, displayNum, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CalcPageStateCopyWith<_$_CalcPageState> get copyWith =>
      __$$_CalcPageStateCopyWithImpl<_$_CalcPageState>(this, _$identity);
}

abstract class _CalcPageState extends CalcPageState {
  const factory _CalcPageState(
      {final double calcNum,
      final String displayNum,
      final FunctionType? type}) = _$_CalcPageState;
  const _CalcPageState._() : super._();

  @override
  double get calcNum;
  @override
  String get displayNum;
  @override
  FunctionType? get type;
  @override
  @JsonKey(ignore: true)
  _$$_CalcPageStateCopyWith<_$_CalcPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
