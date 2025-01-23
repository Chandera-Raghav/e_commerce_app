import 'package:flutter/material.dart';

import 'home_page_widget/top_widget.dart';

class DashboardWidgetPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _DashboardWidgetPage();

}

class _DashboardWidgetPage extends State<DashboardWidgetPage>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black45,
        appBar: AppBar(
          backgroundColor: Colors.blue, actions: [Text("appbar")],),
        body: Expanded(
            child: Column(children: [
          topWidget(context: context),
        ],)),
      ),
    );
  }
}