import 'package:e_commerce_app/ui/product_details_screen/product_details_widget/product_top_bar_widget.dart';
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
      backgroundColor: Colors.white54.withOpacity(0.90),
      body: Container(
        margin: EdgeInsets.zero,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: const Column(children: [
          ProductTopBar(),
          SizedBox(width: 50, height: 80,)
        ],)
      ),
    );
  }
}