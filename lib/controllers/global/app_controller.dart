import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_calculator/themes/app_theme.dart';
import 'package:riverpod_calculator/utils/local_client.dart';

part 'app_controller.freezed.dart';

enum AppMode {
  // ライトモード
  lightMode,

  // ダークモード
  darkMode
}

@freezed
class AppState with _$AppState {
  const AppState._();

  const factory AppState({
    ThemeData? appTheme,
  }) = _AppState;
}

final appProvider =
    StateNotifierProvider.autoDispose<AppController, AppState>((ref) {
  final localClient = ref.read(localClientProvider);
  return AppController(localClient: localClient);
});

class AppController extends StateNotifier<AppState> {
  AppController({
    required this.localClient,
  }) : super(const AppState()) {
    _init();
  }

  final LocalClient localClient;

  Future<void> _init() async {
    // ローカルに保存してある値の取得
    await localClient.setSyncPref();
    final selectedAppMode = syncPrefString[LocalKeyType.appMode];

    // 初回起動時
    if (selectedAppMode == null) {
      await localClient.setValue<String>(
        type: LocalKeyType.appMode,
        value: AppMode.lightMode.name,
      );
      state = state.copyWith(
        appTheme: AppTheme.lightTheme,
      );
      return;
    }

    state = state.copyWith(
      appTheme: selectedAppMode == AppMode.lightMode.name
          ? AppTheme.lightTheme
          : AppTheme.darkTheme,
    );
  }

  // アプリテーマを入れ替える
  Future<void> toggleAppTheme() async {
    final selectedAppMode = syncPrefString[LocalKeyType.appMode];

    // ライトモード→ダークモード
    if (selectedAppMode == AppMode.lightMode.name) {
      await localClient.setValue<String>(
        type: LocalKeyType.appMode,
        value: AppMode.darkMode.name,
      );
      state = state.copyWith(
        appTheme: AppTheme.darkTheme,
      );
      return;
    }

    // ダークモード→ライトモード
    await localClient.setValue<String>(
      type: LocalKeyType.appMode,
      value: AppMode.lightMode.name,
    );
    state = state.copyWith(
      appTheme: AppTheme.lightTheme,
    );
  }
}
