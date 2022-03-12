import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_calculator/controllers/calc_page_controller.dart';
import 'package:riverpod_calculator/pages/src/calc_display.dart';
import 'package:riverpod_calculator/pages/src/function_button.dart';
import 'package:riverpod_calculator/pages/src/num_button.dart';

class CalcPage extends StatelessWidget {
  const CalcPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Consumer(builder: (context, ref, _) {
          final notifier = ref.read(calcPageProvider.notifier);
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CalcDisplay(),
                const SizedBox(height: 8.0),
                Row(
                  children: [
                    FunctionButton(
                      "C",
                      onPressed: notifier.clear,
                    ),
                    FunctionButton(
                      "AC",
                      onPressed: notifier.allClear,
                    ),
                    FunctionButton(
                      "BS",
                      onPressed: notifier.backSpace,
                    ),
                    FunctionButton(
                      "÷",
                      onPressed: notifier.division,
                    ),
                  ],
                ),
                Row(
                  children: [
                    const NumButton(7),
                    const NumButton(8),
                    const NumButton(9),
                    FunctionButton(
                      "×",
                      onPressed: notifier.multiplication,
                    ),
                  ],
                ),
                Row(
                  children: [
                    const NumButton(4),
                    const NumButton(5),
                    const NumButton(6),
                    FunctionButton(
                      "−",
                      onPressed: notifier.subtraction,
                    ),
                  ],
                ),
                Row(
                  children: [
                    const NumButton(1),
                    const NumButton(2),
                    const NumButton(3),
                    FunctionButton(
                      "＋",
                      onPressed: notifier.addition,
                    ),
                  ],
                ),
                Row(
                  children: [
                    const NumButton(0),
                    FunctionButton(
                      "＝",
                      onPressed: notifier.equal,
                    ),
                  ],
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
