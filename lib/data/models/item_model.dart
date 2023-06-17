class ItemModel {
  final String id;
  final String name;
  final String discount;
  final String image;
  final String price;
  final String desciption;
  final List<String> sizes;
  final List<String> colors;
  final List<String> images;
  final List<String> prices;

  ItemModel({
    required this.id,
    required this.name,
    required this.discount,
    required this.image,
    required this.price,
    required this.desciption,
    required this.sizes,
    required this.colors,
    required this.images,
    required this.prices,
  });

  factory ItemModel.fromJson(Map<String, dynamic> json) {
    return ItemModel(
      id: json['id'],
      name: json['name'],
      discount: json['discount'],
      image: json['image'],
      price: json['price'],
      desciption: json['desciption'],
      sizes: json['sizes'],
      colors: json['colors'],
      images: json['images'],
      prices: json['prices'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'discount': discount,
        'image': image,
        'price': price,
        'desciption': desciption,
        'sizes': sizes,
        'colors': colors,
        'images': images,
        'prices': prices,
      };
}
