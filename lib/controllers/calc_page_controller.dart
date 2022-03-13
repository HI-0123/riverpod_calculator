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
    @Default(false) isCalculated,
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
    final isCalculated = state.isCalculated;
    if (isCalculated) {
      state = state.copyWith(
        displayNum: num,
        isCalculated: false,
      );
    } else {
      if (checkNumDigits()) {
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
  }

  /// 足し算
  void addition() {
    final displayNum = state.displayNum;
    final calcNum = state.calcNum;
    final isCalculated = state.isCalculated;
    if (!isCalculated) {
      final calcResult = calcNum != 0 ? calcNum + displayNum : displayNum;
      state = state.copyWith(
        calcNum: calcResult,
        displayNum: calcResult,
        calcMark: "➕",
        calcType: CALC_TYPE.add,
        isCalculated: true,
      );
    } else {
      state = state.copyWith(
        calcMark: "➕",
        calcType: CALC_TYPE.add,
        isCalculated: true,
      );
    }
  }

  /// 引き算
  void subtraction() {
    final displayNum = state.displayNum;
    final calcNum = state.calcNum;
    final isCalculated = state.isCalculated;
    if (!isCalculated) {
      final calcResult = calcNum != 0 ? calcNum - displayNum : displayNum;
      state = state.copyWith(
        calcNum: calcResult,
        displayNum: calcResult,
        calcMark: "➖",
        calcType: CALC_TYPE.sub,
        isCalculated: true,
      );
    } else {
      state = state.copyWith(
        calcMark: "➖",
        calcType: CALC_TYPE.sub,
        isCalculated: true,
      );
    }
  }

  /// 掛け算
  void multiplication() {
    final displayNum = state.displayNum;
    final calcNum = state.calcNum;
    final isCalculated = state.isCalculated;
    if (!isCalculated) {
      final calcResult = calcNum != 0 ? calcNum * displayNum : displayNum;
      state = state.copyWith(
        calcNum: calcResult,
        displayNum: calcResult,
        calcMark: "✖️",
        calcType: CALC_TYPE.multi,
        isCalculated: true,
      );
    } else {
      state = state.copyWith(
        calcMark: "✖️",
        calcType: CALC_TYPE.multi,
        isCalculated: true,
      );
    }
  }

  /// 割り算
  void division() {
    final displayNum = state.displayNum;
    final calcNum = state.calcNum;
    final isCalculated = state.isCalculated;
    if (!isCalculated) {
      final calcResult = calcNum != 0 ? calcNum / displayNum : displayNum;
      state = state.copyWith(
        calcNum: calcResult,
        displayNum: calcResult,
        calcMark: "➗",
        calcType: CALC_TYPE.div,
        isCalculated: true,
      );
    } else {
      state = state.copyWith(
        calcMark: "➗",
        calcType: CALC_TYPE.div,
        isCalculated: true,
      );
    }
  }

  /// イコール
  void equal() {
    final calcType = state.calcType;
    final displayNum = state.displayNum;
    final calcNum = state.calcNum;

    void stateUpdate(double calcResult) {
      state = state.copyWith(
        calcNum: calcResult,
        displayNum: calcResult,
        calcMark: "",
        isCalculated: true,
      );
    }

    switch (calcType) {
      case CALC_TYPE.add:
        final calcResult = calcNum + displayNum;
        stateUpdate(calcResult);
        break;
      case CALC_TYPE.sub:
        final calcResult = calcNum - displayNum;
        stateUpdate(calcResult);
        break;
      case CALC_TYPE.multi:
        final calcResult = calcNum * displayNum;
        stateUpdate(calcResult);
        break;
      case CALC_TYPE.div:
        final calcResult = calcNum / displayNum;
        stateUpdate(calcResult);
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
    state = state.copyWith(
      calcNum: 0,
      displayNum: 0,
      calcMark: null,
      calcType: null,
    );
  }

  ///　入力できる桁数を制限
  bool checkNumDigits() {
    final displayNum = state.displayNum;
    return displayNum.abs().toString().length < 10;
  }
}
