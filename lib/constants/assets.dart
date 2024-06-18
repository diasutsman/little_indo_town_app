class Assets {
  static AssetsIcons? _icons;
  static AssetsIcons get icons {
    if (_icons != null) return _icons as AssetsIcons;
    return _icons = AssetsIcons();
  }

  static AssetsFonts? _fonts;
  static AssetsFonts get fonts {
    if (_fonts != null) return _fonts as AssetsFonts;
    return _fonts = AssetsFonts();
  }
}

class AssetsIcons {
  final String appIcon = 'assets/icon/icon.png';
  final String appIconWhite = 'assets/icon/icon-white.png';
}

class AssetsFonts {
  final String elikaGorica = "Elika Gorica";
  final String normsPro = "TT Norms Pro";
}
