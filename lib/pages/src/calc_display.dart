import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../controllers/calc_page_controller.dart';

class CalcDisplay extends StatelessWidget {
  const CalcDisplay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final displayNum =
          ref.watch(calcPageProvider.select((s) => s.stringDisplayNum));
      final calcMark = ref.watch(calcPageProvider.select((s) => s.calcMark));
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          calcMark != null
              ? Text(
                  calcMark,
                  style: const TextStyle(fontSize: 16.0),
                )
              : Container(),
          const SizedBox(width: 24.0),
          Text(
            displayNum,
            style: const TextStyle(fontSize: 32.0),
          ),
        ],
      );
    });
  }
}
