import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final Provider<LocalClient> localClientProvider = Provider<LocalClient>(
  (ProviderRef<LocalClient> ref) => LocalClient(),
);

enum LocalKeyType {
  // アプリモード（ライトモード、ダークモード）
  appMode(
    key: 'APP_MODE',
    dataType: String,
  );

  const LocalKeyType({
    required this.key,
    required this.dataType,
  });
  final String key;
  final Type dataType;
}

// 値を非同期で扱わないためのグローバル変数
Map<LocalKeyType, String?> syncPrefString = {
  LocalKeyType.appMode: null,
};

class LocalClient {
  // 値をローカルに保存、同期の変数にも値を代入する
  Future<void> setValue<T>({
    required LocalKeyType type,
    required T value,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    // String型
    if (value is String) {
      syncPrefString[type] = value;
      await prefs.setString(type.key, value);
      return;
    }

    Exception('Not compatible type');
  }

  // ローカルから値を取得する
  Future<T?> getValue<T>(LocalKeyType type) async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey(type.key)) {
      return null;
    }
    return prefs.get(type.key) as T;
  }

  // ローカルにある値を削除する
  Future<void> removeValue(LocalKeyType type) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(type.key);
  }

  // ローカルにある値をすべて削除する
  Future<void> allRemove() async {
    final prefs = await SharedPreferences.getInstance();
    for (final type in LocalKeyType.values) {
      await prefs.remove(type.key);
    }
  }

  // ローカルに保存してある値を同期で扱うことができるようにする
  Future<void> setSyncPref() async {
    for (final type in LocalKeyType.values) {
      // String型
      if (type.dataType is String) {
        final value = await getValue<String>(type);
        syncPrefString[type] = value;
        continue;
      }
    }
  }
}
