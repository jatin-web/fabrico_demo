import 'package:fabrico_demo/data/models/item_model.dart';

class CartItemModel {
  String id;
  String itemId;
  String name;
  String price;
  String discount;
  String qty;
  String image;

  CartItemModel({
    required this.id,
    required this.itemId,
    required this.name,
    required this.price,
    required this.discount,
    required this.qty,
    required this.image,
  });

  factory CartItemModel.cartItemModelFromItem(ItemModel item, String qty) {
    return CartItemModel(
      id: item.id,
      itemId: item.id,
      name: item.name,
      price: item.price,
      discount: item.discount,
      qty: qty,
      image: item.image,
    );
  }

  factory CartItemModel.fromJson(Map<String, dynamic> json) => CartItemModel(
        id: json["id"],
        itemId: json["itemId"],
        name: json["name"],
        price: json["price"],
        discount: json["discount"],
        qty: json["qty"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "itemId": itemId,
        "name": name,
        "price": price,
        "discount": discount,
        "qty": qty,
        "image": image,
      };
}
