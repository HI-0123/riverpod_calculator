import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod/riverpod.dart';

part 'calc_page_controller.freezed.dart';

enum CALC_TYPE { add, sub, multi, div }

@freezed
class CalcPageState with _$CalcPageState {
  const CalcPageState._();
  const factory CalcPageState({
    @Default(0) double calcNum,
    @Default(0) double displayNum,
    String? calcMark,
    CALC_TYPE? calcType,
  }) = _CalcPageState;

  String get stringDisplayNum => displayNum.toInt() < displayNum
      ? displayNum.toString()
      : displayNum.toInt().toString();
}

final calcPageProvider =
    StateNotifierProvider.autoDispose<CalcPageController, CalcPageState>((ref) {
  return CalcPageController();
});

class CalcPageController extends StateNotifier<CalcPageState> {
  CalcPageController() : super(const CalcPageState());

  void display(double num) {}
}
