import 'package:riverpod/riverpod.dart';

import '../../../types/types.dart';
import 'calc_page/state.dart';

const initNum = 0.0;
const decimal = '.';

final calcPageProvider =
    StateNotifierProvider.autoDispose<CalcPageController, CalcPageState>((ref) {
  return CalcPageController();
});

class CalcPageController extends StateNotifier<CalcPageState> {
  CalcPageController() : super(const CalcPageState());

  void inputNum(int num) {
    final _displayNum = state.displayNum;
    if (_displayNum.split('').length < 12) {
      final updatedNum = _displayNum == initNum.toInt().toString()
          ? num.toString()
          : _displayNum + num.toString();
      state = state.copyWith(
        displayNum: updatedNum,
      );
    }
  }

  void inputFunc(FunctionType type) {
    final calcTypes = [
      FunctionType.add,
      FunctionType.sub,
      FunctionType.multi,
      FunctionType.div,
      FunctionType.percent
    ];
    final _displayNum = state.displayNum;
    final _calcNum = state.calcNum;

    if (calcTypes.contains(type)) {
      // 四則演算の場合
      state = state.copyWith(
        type: type,
        calcNum: double.parse(_displayNum),
        displayNum: _calcNum == initNum ? initNum.toString() : _displayNum,
      );
      return;
    }

    if (type == FunctionType.backSpace) {
      // 最後の一文字を消す
      final _slicedStr = backSpace(_displayNum);
      state = state.copyWith(
        displayNum: _slicedStr.isNotEmpty ? _slicedStr : initNum.toString(),
      );
    }
    if (type == FunctionType.decimal) {
      // 小数点を表示・非表示する
      if (_displayNum.lastIndexOf(decimal) == -1) {
        state = state.copyWith(
          displayNum: _displayNum + decimal,
        );
        return;
      }
      if (_displayNum.lastIndexOf(decimal) == _displayNum.length - 1) {
        final _slicedStr = backSpace(_displayNum);
        state = state.copyWith(
          displayNum: _slicedStr,
        );
      }
    }
    if (type == FunctionType.equal) {
      switch (state.type) {
        case FunctionType.add:
          final calcResult = _calcNum + double.parse(_displayNum);
          state = state.copyWith(
            displayNum: checkInt(calcResult).toString(),
            type: null,
            calcNum: initNum,
          );
          break;
        case FunctionType.sub:
          final calcResult = _calcNum - double.parse(_displayNum);
          state = state.copyWith(
            displayNum: checkInt(calcResult).toString(),
            type: null,
            calcNum: initNum,
          );
          break;
        case FunctionType.multi:
          final calcResult = _calcNum * double.parse(_displayNum);
          state = state.copyWith(
            displayNum: checkInt(calcResult).toString(),
            type: null,
            calcNum: initNum,
          );
          break;
        case FunctionType.div:
          final calcResult = _calcNum / double.parse(_displayNum);
          state = state.copyWith(
            displayNum: checkInt(calcResult).toString(),
            type: null,
            calcNum: initNum,
          );
          break;
        case FunctionType.percent:
          final calcResult = _calcNum * double.parse(_displayNum) / 100;
          state = state.copyWith(
            displayNum: checkInt(calcResult).toString(),
            type: null,
            calcNum: initNum,
          );
          break;
        default:
          break;
      }
    }
  }

  void allClear() {
    state = state.copyWith(
      calcNum: initNum,
      displayNum: initNum.toInt().toString(),
      type: null,
    );
  }

  String backSpace(String str) {
    final strList = str.split('').toList();
    final newStr = strList.sublist(0, strList.length - 1).join();
    return newStr;
  }

  num checkInt(double num) {
    final isInt = num == num.toInt();
    return isInt ? num.toInt() : num;
  }

  // void display(double num) {
  //   var displayNum = state.displayNum;

  //   if (isCalculated) {
  //     state = state.copyWith(
  //       displayNum: num,
  //       isCalculated: false,
  //     );
  //   } else {
  //     if (checkNumDigits()) {
  //       displayNum = displayNum * 10;
  //       if (displayNum == 0) {
  //         state = state.copyWith(displayNum: num);
  //       } else if (displayNum > 0) {
  //         state = state.copyWith(displayNum: displayNum + num);
  //       } else if (displayNum < 0) {
  //         state = state.copyWith(displayNum: displayNum - num);
  //       }
  //     }
  //   }
  // }

  /// 足し算
  // void addition() {
  //   final displayNum = state.displayNum;
  //   final calcNum = state.calcNum;
  //   final isCalculated = state.isCalculated;
  //   if (!isCalculated) {
  //     final calcResult = calcNum != 0 ? calcNum + displayNum : displayNum;
  //     state = state.copyWith(
  //       calcNum: calcResult,
  //       displayNum: calcResult,
  //       isCalculated: true,
  //     );
  //   } else {
  //     state = state.copyWith(
  //       isCalculated: true,
  //     );
  //   }
  // }

  /// 引き算
  // void subtraction() {
  //   final displayNum = state.displayNum;
  //   final calcNum = state.calcNum;
  //   final isCalculated = state.isCalculated;
  //   if (!isCalculated) {
  //     final calcResult = calcNum != 0 ? calcNum - displayNum : displayNum;
  //     state = state.copyWith(
  //       calcNum: calcResult,
  //       displayNum: calcResult,
  //       isCalculated: true,
  //     );
  //   } else {
  //     state = state.copyWith(
  //       isCalculated: true,
  //     );
  //   }
  // }

  /// 掛け算
  // void multiplication() {
  //   final displayNum = state.displayNum;
  //   final calcNum = state.calcNum;
  //   final isCalculated = state.isCalculated;
  //   if (!isCalculated) {
  //     final calcResult = calcNum != 0 ? calcNum * displayNum : displayNum;
  //     state = state.copyWith(
  //       calcNum: calcResult,
  //       displayNum: calcResult,
  //       isCalculated: true,
  //     );
  //   } else {
  //     state = state.copyWith(
  //       isCalculated: true,
  //     );
  //   }
  // }

  /// 割り算
  // void division() {
  //   final displayNum = state.displayNum;
  //   final calcNum = state.calcNum;
  //   final isCalculated = state.isCalculated;
  //   if (!isCalculated) {
  //     final calcResult = calcNum != 0 ? calcNum / displayNum : displayNum;
  //     state = state.copyWith(
  //       calcNum: calcResult,
  //       displayNum: calcResult,
  //       isCalculated: true,
  //     );
  //   } else {
  //     state = state.copyWith(
  //       isCalculated: true,
  //     );
  //   }
  // }

  /// イコール
  // void equal() {
  //   final calcType = state.calcType;
  //   final displayNum = state.displayNum;
  //   final calcNum = state.calcNum;

  //   void stateUpdate(double calcResult) {
  //     state = state.copyWith(
  //       calcNum: calcResult,
  //       displayNum: calcResult,
  //       calcMark: "",
  //       isCalculated: true,
  //     );
  //   }

  // switch (calcType) {
  //   case CALC_TYPE.add:
  //     final calcResult = calcNum + displayNum;
  //     stateUpdate(calcResult);
  //     break;
  //   case CALC_TYPE.sub:
  //     final calcResult = calcNum - displayNum;
  //     stateUpdate(calcResult);
  //     break;
  //   case CALC_TYPE.multi:
  //     final calcResult = calcNum * displayNum;
  //     stateUpdate(calcResult);
  //     break;
  //   case CALC_TYPE.div:
  //     final calcResult = calcNum / displayNum;
  //     stateUpdate(calcResult);
  //     break;
  // }
// }

  /// 最後に入力した数字を消す
  // void backSpace() {
  //   var displayNum = state.displayNum;
  //   displayNum = (displayNum / 10).floor().toDouble();
  //   state = displayNum != 0
  //       ? state.copyWith(displayNum: displayNum)
  //       : state.copyWith(displayNum: displayNum, calcMark: "");
  // }

  ///　入力できる桁数を制限
  // bool checkNumDigits() {
  //   final displayNum = state.displayNum;
  //   return displayNum.abs().toString().length < 10;
  // }
}
