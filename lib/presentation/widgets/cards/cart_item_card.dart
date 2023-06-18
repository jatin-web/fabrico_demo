import 'package:fabrico_demo/data/models/cart_item_model.dart';
import 'package:fabrico_demo/provider/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({super.key, required this.cartItem});
  final CartItemModel cartItem;

  @override
  Widget build(BuildContext context) {
    CartProvider cartProvider = Provider.of<CartProvider>(context);
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(2),
      child: Row(children: [
        ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            child: SizedBox(
              height: 100,
              width: 120,
              child: Image(
                image: NetworkImage(cartItem.image),
                fit: BoxFit.cover,
              ),
            )),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cartItem.name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(width: 10),
            Text("\$${cartItem.price}"),
          ],
        ),
        Expanded(child: Container()),
        Row(
          children: [
            InkWell(
              onTap: () {
                cartProvider.removeItemFromCart(cartItem);
              },
              child: CircleAvatar(
                radius: 12,
                backgroundColor: Colors.grey.withOpacity(0.2),
                child: const Icon(
                  Icons.remove,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Text(
              cartItem.qty.toString(),
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(width: 10),
            InkWell(
              onTap: () {
                cartProvider.addItemToCart(cartItem);
              },
              child: CircleAvatar(
                radius: 12,
                backgroundColor: Colors.grey.withOpacity(0.2),
                child: const Icon(
                  Icons.add,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
