import 'package:flutter/material.dart';

import '../../types/types.dart';

class FunctionButton extends StatelessWidget {
  const FunctionButton(
    this.type, {
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final FunctionType type;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: onPressed,
        child: type.icon,
      ),
    );
  }
}
