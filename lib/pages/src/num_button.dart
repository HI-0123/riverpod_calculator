import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_calculator/controllers/pages/calc_page/calc_page_controller.dart';

import '../../types/types.dart';

class NumButton extends ConsumerWidget {
  const NumButton(
    this.type, {
    Key? key,
  }) : super(key: key);

  final NumberType type;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: TextButton(
        onPressed: () => ref.read(calcPageProvider.notifier).inputNum(type.num),
        child: Text(
          type.num.toString(),
          style: TextStyle(
            fontSize: 24.0,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
