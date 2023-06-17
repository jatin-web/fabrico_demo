import 'package:flutter/material.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({super.key, required this.onPressed});
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        onPressed();
      
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(50)),
        child: Row(
          children: const [
            Icon(Icons.shopping_bag),
            SizedBox(width: 10),
            Text(
              "Add to Cart",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
