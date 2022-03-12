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
    final calcType = state.calcType;
    if (displayNum.abs().toString().length < 10) {
      if (calcType != null) {
        state = state.copyWith(displayNum: num, calcNum: 0);
      }
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
    final displayNum = state.displayNum;
    final calcNum = state.calcNum;
    if (calcNum != 0) {}
    final calcResult = calcNum != 0 ? calcNum + displayNum : displayNum;
    state = state.copyWith(
      calcNum: calcResult,
      displayNum: calcResult,
      calcMark: "➕",
      calcType: CALC_TYPE.add,
    );
  }

  /// 引き算
  void subtraction() {
    final displayNum = state.displayNum;
    final calcNum = state.calcNum;
    final calcResult = calcNum != 0 ? calcNum - displayNum : displayNum;
    state = state.copyWith(
        calcNum: calcResult,
        displayNum: calcResult,
        calcMark: "➖",
        calcType: CALC_TYPE.sub);
  }

  /// 掛け算
  void multiplication() {
    final displayNum = state.displayNum;
    final calcNum = state.calcNum;
    final calcResult = calcNum != 0 ? calcNum * displayNum : displayNum;
    state = state.copyWith(
        calcNum: calcResult,
        displayNum: calcResult,
        calcMark: "✖️",
        calcType: CALC_TYPE.multi);
  }

  /// 割り算
  void division() {
    final displayNum = state.displayNum;
    final calcNum = state.calcNum;
    final calcResult = calcNum != 0 ? calcNum / displayNum : displayNum;
    state = state.copyWith(
        calcNum: calcResult,
        displayNum: calcResult,
        calcMark: "➗",
        calcType: CALC_TYPE.div);
  }

  /// イコール
  void equal() {
    final calcType = state.calcType;
    final displayNum = state.displayNum;
    final calcNum = state.calcNum;
    switch (calcType) {
      case CALC_TYPE.add:
        final calcResult = calcNum + displayNum;
        state = state.copyWith(
            calcNum: calcResult, displayNum: calcResult, calcMark: "");
        break;
      case CALC_TYPE.sub:
        final calcResult = calcNum - displayNum;
        state = state.copyWith(
            calcNum: calcResult, displayNum: calcResult, calcMark: "");
        break;
      case CALC_TYPE.multi:
        final calcResult = calcNum * displayNum;
        state = state.copyWith(
            calcNum: calcResult, displayNum: calcResult, calcMark: "");
        break;
      case CALC_TYPE.div:
        final calcResult = calcNum / displayNum;
        state = state.copyWith(
            calcNum: calcResult, displayNum: calcResult, calcMark: "");
        break;
    }
  }

  /// 最後に入力した数字を消す
  void backSpace() {
    var displayNum = state.displayNum;
    displayNum = (displayNum / 10).floor().toDouble();
    state = displayNum != 0
        ? state.copyWith(displayNum: displayNum)
        : state.copyWith(displayNum: displayNum, calcMark: "");
  }

  /// 表示されている数字のみをクリア
  void clear() {
    state = state.copyWith(displayNum: 0);
  }

  /// 表示されている数字、計算結果もクリアする
  void allClear() {
    state = state.copyWith(calcNum: 0, displayNum: 0, calcMark: "");
  }
}
