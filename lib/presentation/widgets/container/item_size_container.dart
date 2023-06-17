import 'package:fabrico_demo/constants.dart';
import 'package:flutter/material.dart';

class ItemSizeContainer extends StatelessWidget {
  const ItemSizeContainer(
      {super.key,
      required this.title,
      required this.onTap,
      required this.isSelected});
  final String title;
  final Function onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
          height: 40,
          width: 40,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: isSelected ? appThemeColor : Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black)),
          child: Text(title)),
    );
  }
}
