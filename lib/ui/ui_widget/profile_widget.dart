import 'package:flutter/material.dart';

class ProfileWidgetPage extends StatefulWidget{
  const ProfileWidgetPage({super.key});

  @override
  State<StatefulWidget> createState() => _ProfileWidgetPage();

}

class _ProfileWidgetPage extends State<ProfileWidgetPage>{
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("profile page"),
    );
  }
}