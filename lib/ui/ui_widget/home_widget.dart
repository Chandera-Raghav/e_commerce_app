import 'package:e_commerce_app/ui/ui_widget/home_page_widget/category_select_widget.dart';
import 'package:e_commerce_app/ui/ui_widget/home_page_widget/disply_category_widget.dart';
import 'package:e_commerce_app/ui/ui_widget/home_page_widget/search_widget.dart';
import 'package:e_commerce_app/ui/ui_widget/home_page_widget/slider_images.dart';
import 'package:flutter/material.dart';

import 'home_page_widget/top_widget.dart';

class HomeWidgetPage extends StatefulWidget{
  const HomeWidgetPage({super.key});

  @override
  State<StatefulWidget> createState() => _HomeWidgetPage();

}

class _HomeWidgetPage extends State<HomeWidgetPage>{
  int currentSlide = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: Column(children: [
        const TopWidget(),
        // const SizedBox(height: 03,),
        const SearchWidget(),
        // const SizedBox(height: 03,),
        SliderImages(onChange: (value){
          setState(() {
            currentSlide == value;
          });
        }, currentSlide: currentSlide),
        const CategorySelectWidget(),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Spacial for you", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),),
              Text("see all", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black54),)
            ],),
        ),
        const SizedBox(height: 10,),
        const DisplayCategoryWidget()
      ],)),
    );
  }
}