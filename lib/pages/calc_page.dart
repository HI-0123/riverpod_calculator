import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_calculator/pages/src/calc_display.dart';
import 'package:riverpod_calculator/pages/src/function_button.dart';
import 'package:riverpod_calculator/pages/src/num_button.dart';

import '../controllers/pages/calc_page/calc_page_controller.dart';
import '../types/types.dart';
import 'src/theme_icon_button.dart';

class CalcPage extends ConsumerWidget {
  const CalcPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(calcPageProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('riverpod calculator'),
        actions: const [ThemeIconButton()],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CalcDisplay(),
            const SizedBox(height: 8.0),
            Row(
              children: [
                FunctionButton(
                  FunctionType.allClear,
                  onPressed: () => notifier.allClear(),
                ),
                FunctionButton(
                  FunctionType.backSpace,
                  onPressed: () => notifier.inputFunc(FunctionType.backSpace),
                ),
                FunctionButton(
                  FunctionType.percent,
                  onPressed: () => notifier.inputFunc(FunctionType.percent),
                ),
                FunctionButton(
                  FunctionType.div,
                  onPressed: () => notifier.inputFunc(FunctionType.div),
                ),
              ],
            ),
            Row(
              children: [
                const NumButton(NumberType.seven),
                const NumButton(NumberType.eight),
                const NumButton(NumberType.nine),
                FunctionButton(
                  FunctionType.multi,
                  onPressed: () => notifier.inputFunc(FunctionType.multi),
                ),
              ],
            ),
            Row(
              children: [
                const NumButton(NumberType.four),
                const NumButton(NumberType.five),
                const NumButton(NumberType.six),
                FunctionButton(
                  FunctionType.sub,
                  onPressed: () => notifier.inputFunc(FunctionType.sub),
                ),
              ],
            ),
            Row(
              children: [
                const NumButton(NumberType.one),
                const NumButton(NumberType.two),
                const NumButton(NumberType.three),
                FunctionButton(
                  FunctionType.add,
                  onPressed: () => notifier.inputFunc(FunctionType.add),
                ),
              ],
            ),
            Row(
              children: [
                const NumButton(NumberType.zero),
                FunctionButton(
                  FunctionType.decimal,
                  onPressed: () => notifier.inputFunc(FunctionType.decimal),
                ),
                FunctionButton(
                  FunctionType.equal,
                  onPressed: () => notifier.inputFunc(FunctionType.equal),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
