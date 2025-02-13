import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatefulWidget{

  const ProductDetailsScreen({super.key});

  @override
  State<StatefulWidget> createState() => _ProductDetailsScreen();

}

class _ProductDetailsScreen extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54.withOpacity(0.98),
      body: SafeArea(child:
          Container(
            margin: EdgeInsets.zero,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: const Column(
              children: [
                ProductDetailsScreen(),
              ],
            ),
          )
      ),
    );
  }
}