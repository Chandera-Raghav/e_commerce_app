import 'package:e_commerce_app/ui/ui_widget/dashboard_widget.dart';
import 'package:e_commerce_app/ui/ui_widget/home_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      child: Scaffold(

        bottomNavigationBar: BottomAppBar(
          clipBehavior: Clip.antiAlias,
          color: Colors.transparent,
          notchMargin: 8,
          shape: const CircularNotchedRectangle(),
          child:  Row(
            children: [
              Expanded(child: IconButton(onPressed: (){setState(() {
                HomeWidgetPage();
              });}, icon: const Icon(Icons.dashboard_customize_outlined, color: Colors.orange,))),
              Expanded(child: IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.heart, color: Colors.orange,))),
              const Spacer(),
              Expanded(child: IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart_checkout, color: Colors.orange,))),
              Expanded(child: IconButton(onPressed: (){}, icon: const Icon(Icons.person, color: Colors.orange,)))
            ],
          ),
        ),


        floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
        floatingActionButton: FloatingActionButton(onPressed: (){
          HomeWidgetPage();
          setState(() {
        });},
        shape: const CircleBorder(side: BorderSide(width: 0.5), eccentricity: 0.5),
          child: Container(
            width: MediaQuery.of(context).size.width / 0,
            height: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.orange,
              shape: BoxShape.circle
            ),
            child: const Icon(Icons.house_siding_sharp),
          ),
        ),
        body:
        pageIndex == 0 ? DashboardWidgetPage() : HomeWidgetPage(),
      ),
    );
  }
}