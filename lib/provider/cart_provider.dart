import 'package:fabrico_demo/data/models/cart_item_model.dart';
import 'package:fabrico_demo/data/models/cart_model.dart';
import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  CartModel cartModel =
      CartModel(totalQuantity: "0", totalAmount: "0", cartItems: []);

  void addItemToCart(CartItemModel cartItemModel) {
    cartModel.totalQuantity =
        (int.parse(cartModel.totalQuantity) + 1).toString();
    cartModel.totalAmount =
        (int.parse(cartModel.totalAmount) + int.parse(cartItemModel.price))
            .toString();

    int index = -1;

    for(int i=0; i<cartModel.cartItems.length; i++){
      if(cartModel.cartItems[i].id == cartItemModel.id){
         index = i;
      }
    }

    if (index >=0) {
      print("index : $index");
      cartModel.cartItems[index].qty =
          (int.parse(cartModel.cartItems[index].qty) + 1).toString();
    } else {
      cartModel.cartItems.add(cartItemModel);
    }

    print(cartModel.toJson());

    notifyListeners();
  }

  void removeItemFromCart(CartItemModel cartItemModel) {
    cartModel.totalQuantity =
        (int.parse(cartModel.totalQuantity) - 1).toString();
    cartModel.totalAmount =
        (int.parse(cartModel.totalAmount) - int.parse(cartItemModel.price))
            .toString();

    int index = cartModel.cartItems.indexOf(cartItemModel);
    if (int.parse(cartModel.cartItems[index].qty) > 1) {
      cartModel.cartItems[index].qty =
          (int.parse(cartModel.cartItems[index].qty) - 1).toString();
    } else {
      cartModel.cartItems.remove(cartItemModel);
    }
    print(cartModel.toJson());

    notifyListeners();
  }
}
