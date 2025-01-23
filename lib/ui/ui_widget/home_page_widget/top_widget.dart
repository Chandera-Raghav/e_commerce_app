import 'package:flutter/material.dart';

dynamic topWidget ({required BuildContext context}){
  return SizedBox(width: MediaQuery.of(context).size.width, child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Container(width: 30, height: 30, decoration:BoxDecoration(borderRadius: BorderRadius.circular(50)),child: Image.asset("assets/icons/four-dots-square.svg")),
      Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),height: 30, width: 30,child: const Icon(Icons.park))
  ],));
}