import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_calculator/types/types.dart';

import '../../controllers/pages/calc_page/calc_page_controller.dart';

class CalcDisplay extends StatelessWidget {
  const CalcDisplay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final displayNum =
          ref.watch(calcPageProvider.select((s) => s.displayNum));
      final calcNum = ref.watch(calcPageProvider.select((s) => s.calcNum));
      final calcType = ref.watch(calcPageProvider.select((s) => s.type));

      final isInt = calcNum == calcNum.toInt();

      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            if (calcNum != initNum)
              Text(
                isInt ? calcNum.toInt().toString() : calcNum.toString(),
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 16.0,
                ),
                maxLines: 1,
              ),
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                calcType != null ? calcType.icon : const SizedBox.shrink(),
                const SizedBox(width: 24.0),
                Text(
                  convertDisplayNum(displayNum),
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 32.0,
                  ),
                  maxLines: 1,
                ),
              ],
            ),
          ],
        ),
      );
    });
  }
}

String convertDisplayNum(String strNum) {
  var numList = strNum.split('').toList();
  if (numList.length > 12) {
    numList = numList.sublist(0, 12);
  }
  return numList.join();
}
