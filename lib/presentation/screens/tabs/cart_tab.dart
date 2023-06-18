import 'package:fabrico_demo/constants.dart';
import 'package:fabrico_demo/presentation/widgets/cards/cart_item_card.dart';
import 'package:fabrico_demo/provider/cart_provider.dart';
import 'package:fabrico_demo/utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartTab extends StatelessWidget {
  const CartTab({super.key});

  @override
  Widget build(BuildContext context) {
    CartProvider cartProvider = Provider.of<CartProvider>(context);
    return Column(
      children: [
        getAppBar("Cart", false, context),
        cartProvider.cartModel.cartItems.isEmpty
            ? const Expanded(
                child: Center(
                  child: Text(
                    "Cart is Empty",
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                ),
              )
            : Expanded(
                child: Column(
                  children: [
                    Expanded(
                        child: ListView.builder(
                            itemCount: cartProvider.cartModel.cartItems.length,
                            itemBuilder: (context, index) {
                              return CartItemCard(
                                  cartItem:
                                      cartProvider.cartModel.cartItems[index]);
                            })),
                    Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        decoration: BoxDecoration(
                          color: appThemeColor.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text(
                              "Total Amount : ",
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              "\$${cartProvider.cartModel.totalAmount}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            )
                          ],
                        )),
                  ],
                ),
              )
      ],
    );
  }
}
