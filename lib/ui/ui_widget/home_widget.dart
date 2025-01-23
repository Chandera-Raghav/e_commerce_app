import 'package:flutter/material.dart';

import 'home_page_widget/top_widget.dart';

class HomeWidgetPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _HomeWidgetPage();

}

class _HomeWidgetPage extends State<HomeWidgetPage>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(backgroundColor: Colors.blue,actions: [Text("appbar")],),
        body: Expanded(child: Column(children: [
          topWidget(context: context),
        ],)),
      ),
    );
  }
}