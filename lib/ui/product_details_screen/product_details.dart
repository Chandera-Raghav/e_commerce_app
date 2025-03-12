import 'package:e_commerce_app/ui/product_details_screen/product_details_widget/product_top_bar_widget.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatefulWidget{

  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.20),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Container(
          margin: EdgeInsets.zero,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            const ProductTopBar(),
            const SizedBox(width: 50, height: 80,),

          ],)
        ),
      ),
    );
  }
}