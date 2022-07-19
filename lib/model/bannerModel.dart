import 'dart:convert';

class BannerModel {
  static List<BannerItem> bannerItem = [];
}

class BannerItem {
  final String bannerTitel;
  final String bannerDesc;
  final String bgColor;
  final String bannerImg;

  BannerItem({
    required this.bannerTitel,
    required this.bannerDesc,
    required this.bgColor,
    required this.bannerImg,
  });

  BannerItem copyWith({
    String? bannerTitel,
    String? bannerDesc,
    String? bgColor,
    String? bannerImg,
  }) {
    return BannerItem(
      bannerTitel: bannerTitel ?? this.bannerTitel,
      bannerDesc: bannerDesc ?? this.bannerDesc,
      bgColor: bgColor ?? this.bgColor,
      bannerImg: bannerImg ?? this.bannerImg,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'bannerTitel': bannerTitel,
      'bannerDesc': bannerDesc,
      'bgColor': bgColor,
      'bannerImg': bannerImg,
    };
  }

  factory BannerItem.fromMap(Map<String, dynamic> map) {
    return BannerItem(
      bannerTitel: map['bannerTitel'],
      bannerDesc: map['bannerDesc'] ?? '',
      bgColor: map['bgColor'] ?? '',
      bannerImg: map['bannerImg'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory BannerItem.fromJson(String source) =>
      BannerItem.fromMap(json.decode(source));

  @override
  String toString() {
    return 'BannerItem(bannerTitel: $bannerTitel, bannerDesc: $bannerDesc, bgColor: $bgColor, bannerImg: $bannerImg)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BannerItem &&
        other.bannerTitel == bannerTitel &&
        other.bannerDesc == bannerDesc &&
        other.bgColor == bgColor &&
        other.bannerImg == bannerImg;
  }

  @override
  int get hashCode {
    return bannerTitel.hashCode ^
        bannerDesc.hashCode ^
        bgColor.hashCode ^
        bannerImg.hashCode;
  }
}
