import 'package:flutter/material.dart';

class CartWidgetPage extends StatefulWidget{
  const CartWidgetPage({super.key});

  @override
  State<StatefulWidget> createState() => _CartWidgetPageSate();

}

class _CartWidgetPageSate extends State<CartWidgetPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(margin: EdgeInsets.zero, child: const Text("Cart data"),),
    );
  }
}