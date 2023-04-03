import 'package:flutter/material.dart';
import 'package:riverpod_calculator/gen/assets.gen.dart';

import '../pages/src/button_icon.dart';

enum NumberType {
  // 1
  one(1),

  // 2
  two(2),

  // 3
  three(3),

  // 4
  four(4),

  // 5
  five(5),

  // 6
  six(6),

  // 7
  seven(7),

  // 8
  eight(8),

  // 9
  nine(9),

  // 0
  zero(0);

  const NumberType(this.num);
  final int num;
}

enum FunctionType {
  // 足し算
  add,

  // 引き算
  sub,

  // かけ算
  multi,

  // 割り算
  div,

  // イコール
  equal,

  // パーセント
  percent,

  // オールクリア
  allClear,

  // バックスペース
  backSpace,

  // 小数点
  decimal,
}

extension FinctionTypeEx on FunctionType {
  Widget get icon {
    switch (this) {
      case FunctionType.add:
        return ButtonIcon(
          Assets.images.iconAdd,
        );
      case FunctionType.sub:
        return ButtonIcon(
          Assets.images.iconSub,
        );
      case FunctionType.multi:
        return ButtonIcon(
          Assets.images.iconMulti,
        );
      case FunctionType.div:
        return ButtonIcon(
          Assets.images.iconDiv,
        );
      case FunctionType.equal:
        return ButtonIcon(
          Assets.images.iconEqual,
        );
      case FunctionType.percent:
        return ButtonIcon(
          Assets.images.iconPercent,
        );
      case FunctionType.allClear:
        return ButtonIcon(
          Assets.images.iconAc,
        );
      case FunctionType.backSpace:
        return ButtonIcon(
          Assets.images.iconBs,
        );
      case FunctionType.decimal:
        return ButtonIcon(
          Assets.images.iconDecimal,
        );
    }
  }
}
