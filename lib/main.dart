import 'package:fabrico_demo/data/data.dart';
import 'package:fabrico_demo/presentation/screens/home_screen.dart';
import 'package:fabrico_demo/presentation/screens/new_collection_screen.dart';
import 'package:fabrico_demo/provider/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create : (context) => CartProvider(),
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
