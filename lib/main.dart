import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_calculator/controllers/global/app_controller.dart';
import 'package:riverpod_calculator/pages/calc_page.dart';

void main() {
  runApp(
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = ref.watch(appProvider.select((s) => s.appTheme));

    return MaterialApp(
      title: 'riverpod_calculator',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: const CalcPage(),
    );
  }
}
