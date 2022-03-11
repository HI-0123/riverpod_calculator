import 'package:flutter/cupertino.dart';
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

  void display(double num) {
    var displayNum = state.displayNum;
    if (displayNum.abs().toString().length < 10) {
      displayNum = displayNum * 10;
      if (displayNum == 0) {
        state = state.copyWith(displayNum: num);
      } else if (displayNum > 0) {
        state = state.copyWith(displayNum: displayNum + num);
      } else if (displayNum < 0) {
        state = state.copyWith(displayNum: displayNum - num);
      }
    }
  }

  /// 足し算
  void addition() {
    state = state.copyWith(calcType: CALC_TYPE.add);
  }

  /// 引き算
  void subtraction() {
    state = state.copyWith(calcType: CALC_TYPE.sub);
  }

  /// 掛け算
  void multiplication() {
    state = state.copyWith(calcType: CALC_TYPE.multi);
  }

  /// 割り算
  void division() {
    state = state.copyWith(calcType: CALC_TYPE.div);
  }

  /// 表示されている数字のみをクリア
  void clear() {
    state = state.copyWith(displayNum: 0);
  }

  /// 表示されている数字、計算結果もクリアする
  void allClear() {
    state = state.copyWith(calcNum: 0, displayNum: 0);
  }
}
