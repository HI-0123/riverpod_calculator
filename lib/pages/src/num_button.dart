import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_calculator/controllers/calc_page_controller.dart';

class NumButton extends StatelessWidget {
  const NumButton(
    this.num, {
    Key? key,
  }) : super(key: key);

  final double num;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return Expanded(
          child: TextButton(
            onPressed: () => ref.read(calcPageProvider.notifier).display(num),
            child: Text(
              num.toInt().toString(),
              style: const TextStyle(
                fontSize: 24.0,
              ),
            ),
          ),
        );
      },
    );
  }
}
