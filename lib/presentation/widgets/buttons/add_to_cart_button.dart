import 'package:flutter/material.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton(
      {super.key, required this.onPressed, this.isAddedToCart = false});
  final Function onPressed;
  final bool isAddedToCart;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(50)),
        child: Row(
          children: [
            Icon(
              isAddedToCart ? Icons.check : Icons.shopping_bag,
              color: isAddedToCart ? Colors.grey : Colors.black,
            ),
            const SizedBox(width: 10),
            Text(
              isAddedToCart ? "Added to cart" : "Add to Cart",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: isAddedToCart ? Colors.grey : Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
