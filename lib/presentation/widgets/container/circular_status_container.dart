import 'package:fabrico_demo/data/models/category_model.dart';
import 'package:flutter/material.dart';

class CircularStatusContainer extends StatelessWidget {
  const CircularStatusContainer({super.key, required this.category});
  final Category category;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.teal, width: 2)),
            child: const CircleAvatar(
              backgroundColor: Colors.teal,
              radius: 30,
              child: Icon(
                Icons.check,
                color: Colors.teal,
                size: 20,
              ),
            )),
        const SizedBox(height: 10),
        Text(
          category.title,
          style: const TextStyle(fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
