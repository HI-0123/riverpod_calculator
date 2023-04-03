import 'package:flutter/material.dart';

import '../gen/fonts.gen.dart';
import 'app_colors.dart';

enum Themetype {
  /// ライトモード
  light,

  /// ダークモード
  dark,
}

extension ThemetypeEx on Themetype {
  ThemeData get theme {
    switch (this) {
      case Themetype.light:
        return AppTheme.lightTheme;
      case Themetype.dark:
        return AppTheme.darkTheme;
    }
  }
}

class AppTheme {
  const AppTheme._();

  // ライト、ダークモードに共通のテーマを定義
  static ThemeData get baseTheme => ThemeData(
        fontFamily: FontFamily.notoSansJP,
      );

  // ライトモード
  static ThemeData get lightTheme => baseTheme.copyWith(
        primaryColor: AppColors.textPrimary,
        scaffoldBackgroundColor: AppColors.white,
        iconTheme: const IconThemeData(color: AppColors.black_800),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.amber,
          titleTextStyle: TextStyle(
            fontSize: 20,
            color: AppColors.textPrimary,
          ),
        ),
      );

  // ダークモード
  static ThemeData get darkTheme => baseTheme.copyWith(
        primaryColor: AppColors.white,
        scaffoldBackgroundColor: AppColors.black_700,
        iconTheme: const IconThemeData(color: AppColors.white),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blueGrey,
          titleTextStyle: TextStyle(
            fontSize: 20,
            color: AppColors.white,
          ),
        ),
      );
}
