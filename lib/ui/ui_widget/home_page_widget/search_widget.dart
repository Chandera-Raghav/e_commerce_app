import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget{
  const SearchWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width*0.10,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: Colors.grey.withOpacity(0.20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [const Icon(Icons.search_outlined, color: Colors.grey,),
            const Flexible(flex: 4, child: TextField(decoration: InputDecoration(
                hintText: "Search...", border: InputBorder.none
            ),)),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(height: 25, width: 1, color: Colors.grey,),
            ), const Icon(Icons.tune_outlined, color: Colors.grey,)],),
      ),
    );

  }
}