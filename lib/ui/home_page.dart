import 'package:e_commerce_app/ui/ui_widget/cart_widget.dart';
import 'package:e_commerce_app/ui/ui_widget/dashboard_widget.dart';
import 'package:e_commerce_app/ui/ui_widget/home_widget.dart';
import 'package:e_commerce_app/ui/ui_widget/like_item_widhet.dart';
import 'package:e_commerce_app/ui/ui_widget/profile_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  List screens = [
    const DashboardWidgetPage(),
    const LikeWidgetPage(),
    const HomeWidgetPage(),
    const CartWidgetPage(),
    const ProfileWidgetPage()
  ];
  int pageIndex = 0;
  PageController controller = PageController();
  void nextPage(index){
    setState((){
      pageIndex = index;
      controller.jumpToPage(index);
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar: BottomAppBar(
          elevation: 1,
          height: 60,
          color: Colors.white,

          clipBehavior: Clip.antiAliasWithSaveLayer,
          notchMargin: 10,
          shape: const CircularNotchedRectangle(),
          child:  Container(
            margin: EdgeInsets.zero,
            decoration: const BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){nextPage(0);}, icon: const Icon(Icons.dashboard_customize_outlined, color: Colors.orange,)),
                IconButton(onPressed: (){nextPage(1);}, icon: const Icon(CupertinoIcons.heart, color: Colors.orange,)),
                IconButton(onPressed: (){nextPage(3);}, icon: const Icon(Icons.shopping_cart_checkout, color: Colors.orange,)),
                IconButton(onPressed: (){nextPage(4);}, icon: const Icon(Icons.person, color: Colors.orange,))
              ],
            ),
          ),
        ),


        floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
        floatingActionButton: FloatingActionButton(onPressed: (){
          const HomeWidgetPage();
          nextPage(2);},
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
        PageView.builder(
          controller: controller,
            itemCount: screens.length,
            itemBuilder: (contest, index){
          return screens[index];
        }),
      ),
    );
  }
}