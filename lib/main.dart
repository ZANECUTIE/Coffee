import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cofee/models/coffee_shop.dart';
import 'pages/front_page.dart'; // Import the FrontPage

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CoffeeShop(),
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FrontPage(), // Set FrontPage as the initial screen
      ),
    );
  }
}
