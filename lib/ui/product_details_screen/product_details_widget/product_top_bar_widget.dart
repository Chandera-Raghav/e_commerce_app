import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductTopBar extends StatelessWidget{
  const ProductTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*50,
      child: Row(children: [
        Text("no error"),
        Text("no data")
      ],),
    );

  }
}