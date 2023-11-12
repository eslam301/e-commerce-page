import 'package:e_commerce_app/Product_Details/Product_Details_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:ProductDetailsView.routeName,
      routes: {
        ProductDetailsView.routeName: (context) => const ProductDetailsView(),
      },


    );
  }
}
