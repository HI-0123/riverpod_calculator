import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_calculator/controllers/calc_page_controller.dart';
import 'package:riverpod_calculator/pages/src/function_button.dart';
import 'package:riverpod_calculator/pages/src/num_button.dart';

class CalcPage extends StatelessWidget {
  const CalcPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Consumer(builder: (context, ref, _) {
          final displayNum =
              ref.watch(calcPageProvider.select((s) => s.stringDisplayNum));
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(displayNum),
                const SizedBox(height: 8.0),
                Row(
                  children: [
                    NumButton(7),
                    NumButton(8),
                    NumButton(9),
                    FunctionButton(
                      "×",
                      onPressed: () {},
                    ),
                  ],
                ),
                Row(
                  children: [
                    NumButton(4),
                    NumButton(5),
                    NumButton(6),
                    FunctionButton(
                      "−",
                      onPressed: () {},
                    ),
                  ],
                ),
                Row(
                  children: [
                    NumButton(1),
                    NumButton(2),
                    NumButton(3),
                    FunctionButton(
                      "＋",
                      onPressed: () {},
                    ),
                  ],
                ),
                Row(
                  children: [
                    NumButton(0),
                    FunctionButton(
                      ".",
                      onPressed: () {},
                    ),
                    FunctionButton(
                      "BS",
                      onPressed: () {},
                    ),
                    FunctionButton(
                      "＝",
                      onPressed: () {},
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
