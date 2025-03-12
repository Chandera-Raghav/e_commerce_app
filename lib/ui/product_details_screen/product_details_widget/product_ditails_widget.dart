import 'package:flutter/material.dart';

class ProductImageWidget extends StatefulWidget{
  const ProductImageWidget({super.key});

  @override
  State<StatefulWidget> createState() => _ProductImageWidget();

}

class _ProductImageWidget extends State<ProductImageWidget>{
  @override
  Widget build(BuildContext context) {
    return SizedBox(width: 200,child: PageView.builder(
        // itemCount: ,
        itemBuilder: (context, index){

    }),);
  }
}