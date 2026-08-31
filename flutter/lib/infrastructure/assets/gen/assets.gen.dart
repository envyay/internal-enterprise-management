// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $LibGen {
  const $LibGen();

  /// Directory path: lib/infrastructure
  $LibInfrastructureGen get infrastructure => const $LibInfrastructureGen();
}

class $LibInfrastructureGen {
  const $LibInfrastructureGen();

  /// Directory path: lib/infrastructure/assets
  $LibInfrastructureAssetsGen get assets => const $LibInfrastructureAssetsGen();
}

class $LibInfrastructureAssetsGen {
  const $LibInfrastructureAssetsGen();

  /// Directory path: lib/infrastructure/assets/icons
  $LibInfrastructureAssetsIconsGen get icons =>
      const $LibInfrastructureAssetsIconsGen();
}

class $LibInfrastructureAssetsIconsGen {
  const $LibInfrastructureAssetsIconsGen();

  /// File path: lib/infrastructure/assets/icons/admin_panel.svg
  SvgGenImage get adminPanel =>
      const SvgGenImage('lib/infrastructure/assets/icons/admin_panel.svg');

  /// File path: lib/infrastructure/assets/icons/attachment.svg
  SvgGenImage get attachment =>
      const SvgGenImage('lib/infrastructure/assets/icons/attachment.svg');

  /// File path: lib/infrastructure/assets/icons/bell.svg
  SvgGenImage get bell =>
      const SvgGenImage('lib/infrastructure/assets/icons/bell.svg');

  /// File path: lib/infrastructure/assets/icons/book.svg
  SvgGenImage get book =>
      const SvgGenImage('lib/infrastructure/assets/icons/book.svg');

  /// File path: lib/infrastructure/assets/icons/calendar.svg
  SvgGenImage get calendar =>
      const SvgGenImage('lib/infrastructure/assets/icons/calendar.svg');

  /// File path: lib/infrastructure/assets/icons/clock.svg
  SvgGenImage get clock =>
      const SvgGenImage('lib/infrastructure/assets/icons/clock.svg');

  /// File path: lib/infrastructure/assets/icons/communication.svg
  SvgGenImage get communication =>
      const SvgGenImage('lib/infrastructure/assets/icons/communication.svg');

  /// File path: lib/infrastructure/assets/icons/email.svg
  SvgGenImage get email =>
      const SvgGenImage('lib/infrastructure/assets/icons/email.svg');

  /// File path: lib/infrastructure/assets/icons/grid.svg
  SvgGenImage get grid =>
      const SvgGenImage('lib/infrastructure/assets/icons/grid.svg');

  /// File path: lib/infrastructure/assets/icons/history.svg
  SvgGenImage get history =>
      const SvgGenImage('lib/infrastructure/assets/icons/history.svg');

  /// File path: lib/infrastructure/assets/icons/light_bulb.svg
  SvgGenImage get lightBulb =>
      const SvgGenImage('lib/infrastructure/assets/icons/light_bulb.svg');

  /// File path: lib/infrastructure/assets/icons/logo.svg
  SvgGenImage get logo =>
      const SvgGenImage('lib/infrastructure/assets/icons/logo.svg');

  /// File path: lib/infrastructure/assets/icons/message.svg
  SvgGenImage get message =>
      const SvgGenImage('lib/infrastructure/assets/icons/message.svg');

  /// File path: lib/infrastructure/assets/icons/pdf.svg
  SvgGenImage get pdf =>
      const SvgGenImage('lib/infrastructure/assets/icons/pdf.svg');

  /// File path: lib/infrastructure/assets/icons/plus.svg
  SvgGenImage get plus =>
      const SvgGenImage('lib/infrastructure/assets/icons/plus.svg');

  /// File path: lib/infrastructure/assets/icons/profile.svg
  SvgGenImage get profile =>
      const SvgGenImage('lib/infrastructure/assets/icons/profile.svg');

  /// File path: lib/infrastructure/assets/icons/send.svg
  SvgGenImage get send =>
      const SvgGenImage('lib/infrastructure/assets/icons/send.svg');

  /// File path: lib/infrastructure/assets/icons/settings.svg
  SvgGenImage get settings =>
      const SvgGenImage('lib/infrastructure/assets/icons/settings.svg');

  /// File path: lib/infrastructure/assets/icons/support.svg
  SvgGenImage get support =>
      const SvgGenImage('lib/infrastructure/assets/icons/support.svg');

  /// File path: lib/infrastructure/assets/icons/tick.svg
  SvgGenImage get tick =>
      const SvgGenImage('lib/infrastructure/assets/icons/tick.svg');

  /// File path: lib/infrastructure/assets/icons/timeline.svg
  SvgGenImage get timeline =>
      const SvgGenImage('lib/infrastructure/assets/icons/timeline.svg');

  /// File path: lib/infrastructure/assets/icons/website.svg
  SvgGenImage get website =>
      const SvgGenImage('lib/infrastructure/assets/icons/website.svg');

  /// File path: lib/infrastructure/assets/icons/window.svg
  SvgGenImage get window =>
      const SvgGenImage('lib/infrastructure/assets/icons/window.svg');

  /// File path: lib/infrastructure/assets/icons/word.svg
  SvgGenImage get word =>
      const SvgGenImage('lib/infrastructure/assets/icons/word.svg');

  /// File path: lib/infrastructure/assets/icons/xlsx.svg
  SvgGenImage get xlsx =>
      const SvgGenImage('lib/infrastructure/assets/icons/xlsx.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
    adminPanel,
    attachment,
    bell,
    book,
    calendar,
    clock,
    communication,
    email,
    grid,
    history,
    lightBulb,
    logo,
    message,
    pdf,
    plus,
    profile,
    send,
    settings,
    support,
    tick,
    timeline,
    website,
    window,
    word,
    xlsx,
  ];
}

abstract final class Assets {
  static const $LibGen lib = $LibGen();
}

class SvgGenImage {
  const SvgGenImage(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = false;

  const SvgGenImage.vec(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    _svg.ColorMapper? colorMapper,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
        colorMapper: colorMapper,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter:
          colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
