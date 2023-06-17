import 'package:flutter/material.dart';

class ItemSizeContainer extends StatelessWidget {
  const ItemSizeContainer({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        width: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            shape: BoxShape.circle, border: Border.all(color: Colors.black)),
        child: Text(title));
  }
}
