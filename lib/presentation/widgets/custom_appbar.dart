import 'package:fabrico_demo/constants.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});
  final double bottomLineHeight = 2;
  final double bottomLineWidthFactor = 0.6;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.infinity,
          height: 100,
          padding: const EdgeInsets.only(top: 20),
          color: appThemeColor,
          alignment: Alignment.center,
          child: const Text(
            "Vega",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        Container(
          height: bottomLineHeight,
          width: size.width * bottomLineWidthFactor,
          color: Colors.black,
        )
      ],
    );
  }
}
