import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ButtonIcon extends StatelessWidget {
  const ButtonIcon(
    this.path, {
    Key? key,
  }) : super(key: key);

  final String path;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path,
      colorFilter: ColorFilter.mode(
        Theme.of(context).iconTheme.color!,
        BlendMode.srcIn,
      ),
    );
  }
}
