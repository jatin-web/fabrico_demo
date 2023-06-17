import 'package:fabrico_demo/data/models/item_model.dart';

class CollectionModel {
  final String bannerTitle;
  final String banner;
  final List<ItemModel> items;

  CollectionModel({
    required this.bannerTitle,
    required this.banner,
    required this.items,
  });

  factory CollectionModel.fromJson(Map<String, dynamic> json) {
    return CollectionModel(
      bannerTitle: json['bannerTitle'],
      banner: json['banner'],
      items: json['items'],
    );
  }

  Map<String, dynamic> toJson() => {
        'bannerTitle': bannerTitle,
        'banner': banner,
        'items': items,
      };
}
