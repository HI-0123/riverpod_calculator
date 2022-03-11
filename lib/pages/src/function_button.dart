import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_calculator/controllers/calc_page_controller.dart';

class FunctionButton extends StatelessWidget {
  const FunctionButton(
    this.mark, {
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final String mark;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          mark,
          style: const TextStyle(
            fontSize: 24.0,
          ),
        ),
      ),
    );
  }
}
