/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/moon_cloud_fast_wind.png
  AssetGenImage get moonCloudFastWind =>
      const AssetGenImage('assets/icons/moon_cloud_fast_wind.png');

  /// File path: assets/icons/moon_cloud_mid_rain.png
  AssetGenImage get moonCloudMidRain =>
      const AssetGenImage('assets/icons/moon_cloud_mid_rain.png');

  /// File path: assets/icons/sun_cloud_angled_rain.png
  AssetGenImage get sunCloudAngledRain =>
      const AssetGenImage('assets/icons/sun_cloud_angled_rain.png');

  /// File path: assets/icons/sun_cloud_mid_rain.png
  AssetGenImage get sunCloudMidRain =>
      const AssetGenImage('assets/icons/sun_cloud_mid_rain.png');

  /// File path: assets/icons/tornado.png
  AssetGenImage get tornado => const AssetGenImage('assets/icons/tornado.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        moonCloudFastWind,
        moonCloudMidRain,
        sunCloudAngledRain,
        sunCloudMidRain,
        tornado
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/bg.png
  AssetGenImage get bg => const AssetGenImage('assets/images/bg.png');

  /// File path: assets/images/house.png
  AssetGenImage get house => const AssetGenImage('assets/images/house.png');

  /// List of all assets
  List<AssetGenImage> get values => [bg, house];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
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

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
