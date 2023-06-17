import 'package:fabrico_demo/utils.dart';
import 'package:flutter/material.dart';

class CircularColorBox extends StatelessWidget {
  const CircularColorBox(
      {super.key, required this.color, required this.onTap, required this.isSelected});
  final String color;
  final Function onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:  (){
        onTap();
      },
      child: Container(
          height: 40,
          width: 40,
          padding: EdgeInsets.all(2),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  color: isSelected ? Colors.black : Colors.transparent,
                  width: isSelected ? 2 : 0)),
          child: CircleAvatar(
            backgroundColor: colorMapper(color),
          )),
    );
  }
}
