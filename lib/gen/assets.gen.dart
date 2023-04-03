/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/icon_ac.svg
  String get iconAc => 'assets/images/icon_ac.svg';

  /// File path: assets/images/icon_add.svg
  String get iconAdd => 'assets/images/icon_add.svg';

  /// File path: assets/images/icon_bs.svg
  String get iconBs => 'assets/images/icon_bs.svg';

  /// File path: assets/images/icon_decimal.svg
  String get iconDecimal => 'assets/images/icon_decimal.svg';

  /// File path: assets/images/icon_div.svg
  String get iconDiv => 'assets/images/icon_div.svg';

  /// File path: assets/images/icon_equal.svg
  String get iconEqual => 'assets/images/icon_equal.svg';

  /// File path: assets/images/icon_moon.svg
  String get iconMoon => 'assets/images/icon_moon.svg';

  /// File path: assets/images/icon_multi.svg
  String get iconMulti => 'assets/images/icon_multi.svg';

  /// File path: assets/images/icon_percent.svg
  String get iconPercent => 'assets/images/icon_percent.svg';

  /// File path: assets/images/icon_sub.svg
  String get iconSub => 'assets/images/icon_sub.svg';

  /// File path: assets/images/icon_sun.svg
  String get iconSun => 'assets/images/icon_sun.svg';

  /// List of all assets
  List<String> get values => [
        iconAc,
        iconAdd,
        iconBs,
        iconDecimal,
        iconDiv,
        iconEqual,
        iconMoon,
        iconMulti,
        iconPercent,
        iconSub,
        iconSun
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}
