import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_calculator/controllers/global/app_controller.dart';
import 'package:riverpod_calculator/themes/app_theme.dart';

import '../../gen/assets.gen.dart';
import 'button_icon.dart';

class ThemeIconButton extends ConsumerWidget {
  const ThemeIconButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = ref.watch(appProvider.select((s) => s.appTheme));
    final notifier = ref.read(appProvider.notifier);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => notifier.toggleAppTheme(),
        child: appTheme == AppTheme.lightTheme
            ? ButtonIcon(
                Assets.images.iconSun,
              )
            : ButtonIcon(
                Assets.images.iconMoon,
              ),
      ),
    );
  }
}
