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

  static AssetsImages? _images;
  static AssetsImages get images {
    if (_images != null) return _images as AssetsImages;
    return _images = AssetsImages();
  }
}

class AssetsIcons {
  final String appIcon = 'assets/icon/icon.png';
  final String appIconWhite = 'assets/icon/icon-white.png';
}

class AssetsImages {
  final String homeCarousel1 = 'assets/images/home-carousel-1.png';
  final String bintangBro = 'assets/images/bintang-bro.png';
  final String teguk = 'assets/images/teguk.png';
  final String urbanDurian = 'assets/images/urban-durian.png';
  final String homeKey = 'assets/images/home-key.png';
  final String homeLock = 'assets/images/home-lock.png';
  final String homeOff20 = 'assets/images/home-off20.png';
}

class AssetsFonts {
  final String elikaGorica = "Elika Gorica";
  final String normsPro = "TT Norms Pro";
  final String intro = "Intro";
}
