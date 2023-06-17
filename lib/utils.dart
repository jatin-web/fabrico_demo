import 'package:fabrico_demo/constants.dart';
import 'package:flutter/material.dart';

getAppBar(String title, bool? showBackButton, BuildContext context) => Container(
      height: 100,
      width: double.infinity,
      padding: const EdgeInsets.only(top: 20),
      color: appThemeColor,
      alignment: Alignment.center,
      child: Stack(
        children: [
          Center(
            child: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ),
          // if (showBackButton == true)
          Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );

colorMapper(String color) {
  switch (color) {
    case "RED":
      return Colors.red;
    case "BLUE":
      return Colors.blue;
    case "GREEN":
      return Colors.green;
    case "YELLOW":
      return Colors.yellow;

    default:
      return Colors.white;
  }
}
