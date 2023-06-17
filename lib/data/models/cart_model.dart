import 'package:fabrico_demo/data/models/cart_item_model.dart';

class CartModel {
    String totalQuantity;
    String totalAmount;
    List<CartItemModel> cartItems;

    CartModel({
        required this.totalQuantity,
        required this.totalAmount,
        required this.cartItems,
    });

    factory CartModel.fromJson(Map<String, dynamic> json) => CartModel(
        totalQuantity: json["totalQuantity"],
        totalAmount: json["totalAmount"],
        cartItems: List<CartItemModel>.from(json["cartItems"].map((x) => CartItemModel.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "totalQuantity": totalQuantity,
        "totalAmount": totalAmount,
        "cartItems": List<dynamic>.from(cartItems.map((x) => x.toJson())),
    };

    
}