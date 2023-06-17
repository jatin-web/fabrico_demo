import 'package:fabrico_demo/data/data.dart';
import 'package:fabrico_demo/presentation/screens/home_screen.dart';
import 'package:fabrico_demo/presentation/screens/new_collection_screen.dart';
import 'package:fabrico_demo/provider/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // status b5ar color
    statusBarIconBrightness: Brightness.light, // status bar icons' color
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
