import 'package:fabrico_demo/constants.dart';
import 'package:flutter/material.dart';

getAppBar(String title) => Container(
      height: 80,
      width: double.infinity,
      color: appThemeColor,
      padding: const EdgeInsets.only(left: 10),
      alignment: Alignment.centerLeft,
      child:  Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
      ),
    );


colorMapper(String color){
  switch(color){
    case "RED" : return Colors.red;
    case "BLUE" : return Colors.blue;
    case "GREEN" : return Colors.green;
    case "YELLOW" : return Colors.yellow;
    
    default : return Colors.white;

  }
}