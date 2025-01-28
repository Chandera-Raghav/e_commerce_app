import 'package:flutter/material.dart';

class LikeWidgetPage extends StatefulWidget{
  const LikeWidgetPage({super.key});

  @override
  State<StatefulWidget> createState() => _LikeWidgetPage();

}

class _LikeWidgetPage extends State<LikeWidgetPage>{
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("like page"),
    );
  }
}