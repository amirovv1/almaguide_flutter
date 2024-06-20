/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsExampleGen {
  const $AssetsExampleGen();

  /// File path: assets/example/Image.png
  AssetGenImage get image => const AssetGenImage('assets/example/Image.png');

  /// File path: assets/example/example1.png
  AssetGenImage get example1 => const AssetGenImage('assets/example/example1.png');

  /// File path: assets/example/example2.png
  AssetGenImage get example2 => const AssetGenImage('assets/example/example2.png');

  /// List of all assets
  List<AssetGenImage> get values => [image, example1, example2];
}

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/Inter-Regular.ttf
  String get interRegular => 'assets/fonts/Inter-Regular.ttf';

  /// List of all assets
  List<String> get values => [interRegular];
}

class $AssetsPngGen {
  const $AssetsPngGen();

  /// File path: assets/png/AlmaGuide.png
  AssetGenImage get almaGuide => const AssetGenImage('assets/png/AlmaGuide.png');

  /// File path: assets/png/android-logo.png
  AssetGenImage get androidLogo => const AssetGenImage('assets/png/android-logo.png');

  /// File path: assets/png/ios-logo.png
  AssetGenImage get iosLogo => const AssetGenImage('assets/png/ios-logo.png');

  /// File path: assets/png/oyu_card.png
  AssetGenImage get oyuCard => const AssetGenImage('assets/png/oyu_card.png');

  /// File path: assets/png/oyu_card_2.png
  AssetGenImage get oyuCard2 => const AssetGenImage('assets/png/oyu_card_2.png');

  /// File path: assets/png/splash.jpg
  AssetGenImage get splash => const AssetGenImage('assets/png/splash.jpg');

  /// File path: assets/png/succes.png
  AssetGenImage get succes => const AssetGenImage('assets/png/succes.png');

  /// List of all assets
  List<AssetGenImage> get values => [almaGuide, androidLogo, iosLogo, oyuCard, oyuCard2, splash, succes];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/OU.svg
  String get ou => 'assets/svg/OU.svg';

  /// File path: assets/svg/asterisk-24pass.svg
  String get asterisk24pass => 'assets/svg/asterisk-24pass.svg';

  /// File path: assets/svg/cat-curort.svg
  String get catCurort => 'assets/svg/cat-curort.svg';

  /// File path: assets/svg/cat-food.svg
  String get catFood => 'assets/svg/cat-food.svg';

  /// File path: assets/svg/cat-home.svg
  String get catHome => 'assets/svg/cat-home.svg';

  /// File path: assets/svg/cat-hotels.svg
  String get catHotels => 'assets/svg/cat-hotels.svg';

  /// File path: assets/svg/cat-location.svg
  String get catLocation => 'assets/svg/cat-location.svg';

  /// File path: assets/svg/cat-news.svg
  String get catNews => 'assets/svg/cat-news.svg';

  /// File path: assets/svg/cat-sport.svg
  String get catSport => 'assets/svg/cat-sport.svg';

  /// File path: assets/svg/cat-transport.svg
  String get catTransport => 'assets/svg/cat-transport.svg';

  /// File path: assets/svg/category-24.svg
  String get category24 => 'assets/svg/category-24.svg';

  /// File path: assets/svg/check-24.svg
  String get check24 => 'assets/svg/check-24.svg';

  /// File path: assets/svg/filter-24.svg
  String get filter24 => 'assets/svg/filter-24.svg';

  /// File path: assets/svg/home-goods-24.svg
  String get homeGoods24 => 'assets/svg/home-goods-24.svg';

  /// File path: assets/svg/like-outline-24.svg
  String get likeOutline24 => 'assets/svg/like-outline-24.svg';

  /// File path: assets/svg/mail-24otp.svg
  String get mail24otp => 'assets/svg/mail-24otp.svg';

  /// File path: assets/svg/navigation-outline-24.svg
  String get navigationOutline24 => 'assets/svg/navigation-outline-24.svg';

  /// File path: assets/svg/phone-24.svg
  String get phone24 => 'assets/svg/phone-24.svg';

  /// File path: assets/svg/sort-24.svg
  String get sort24 => 'assets/svg/sort-24.svg';

  /// File path: assets/svg/user-24.svg
  String get user24 => 'assets/svg/user-24.svg';

  /// List of all assets
  List<String> get values => [
        ou,
        asterisk24pass,
        catCurort,
        catFood,
        catHome,
        catHotels,
        catLocation,
        catNews,
        catSport,
        catTransport,
        category24,
        check24,
        filter24,
        homeGoods24,
        likeOutline24,
        mail24otp,
        navigationOutline24,
        phone24,
        sort24,
        user24
      ];
}

class Assets {
  Assets._();

  static const $AssetsExampleGen example = $AssetsExampleGen();
  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsPngGen png = $AssetsPngGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size = null});

  final String _assetName;

  final Size? size;

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
