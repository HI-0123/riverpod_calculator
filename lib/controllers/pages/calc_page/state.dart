import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../types/types.dart';

part 'state.freezed.dart';

@freezed
class CalcPageState with _$CalcPageState {
  const CalcPageState._();
  const factory CalcPageState({
    @Default(0) double calcNum,
    @Default('0') String displayNum,
    FunctionType? type,
  }) = _CalcPageState;
}
