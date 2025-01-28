import 'package:flutter/material.dart';

import 'home_page_widget/top_widget.dart';

class DashboardWidgetPage extends StatefulWidget{
  const DashboardWidgetPage({super.key});

  @override
  State<StatefulWidget> createState() => _DashboardWidgetPage();

}

class _DashboardWidgetPage extends State<DashboardWidgetPage>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue, actions: const [Text("appbar")],),
        body: const Column(children: [
                  TopWidget(),
                ],),
      ),
    );
  }
}