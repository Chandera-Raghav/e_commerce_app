import 'package:e_commerce_app/ui/ui_widget/cart_widget.dart';
import 'package:e_commerce_app/ui/ui_widget/dashboard_widget.dart';
import 'package:e_commerce_app/ui/ui_widget/home_widget.dart';
import 'package:e_commerce_app/ui/ui_widget/like_item_widhet.dart';
import 'package:e_commerce_app/ui/ui_widget/profile_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List screens = [
    const DashboardWidgetPage(),
    const LikeWidgetPage(),
    const HomeWidgetPage(),
    const CartWidgetPage(),
    const ProfileWidgetPage()
  ];
  int pageIndex = 0;
  PageController controller = PageController();
  void nextPage(index) {
    setState(() {
      pageIndex = index;
      controller.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,

      body: PageView.builder(
          controller: controller,
          itemCount: screens.length,
          itemBuilder: (contest, index) {
            return screens[index];
          }),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 18,
        shape: const CircularNotchedRectangle(),
        child: SizedBox(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    nextPage(0);
                  },
                  icon: const Icon(
                    Icons.dashboard_customize_outlined,
                    color: Colors.white54,
                  )),
              IconButton(
                  onPressed: () {
                    nextPage(1);
                  },
                  icon: const Icon(
                    CupertinoIcons.heart,
                    color: Colors.white54,
                  )),
              const SizedBox(
                width: 30,
              ),
              IconButton(
                  onPressed: () {
                    nextPage(3);
                  },
                  icon: const Icon(
                    Icons.shopping_cart_checkout,
                    color: Colors.white54,
                  )),
              IconButton(
                  onPressed: () {
                    nextPage(4);
                  },
                  icon: const Icon(
                    Icons.person,
                    color: Colors.white54,
                  ))
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          nextPage(2);
        },
        shape:
        const CircleBorder(),
        backgroundColor: Colors.deepOrange,
        child: const Icon(Icons.house_siding_sharp, color: Colors.white54,),
      ),
    );
  }
}
