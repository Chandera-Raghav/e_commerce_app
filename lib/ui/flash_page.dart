import 'dart:async';
import 'package:e_commerce_app/ui/app_security_page/sign_in_page.dart';
import 'package:e_commerce_app/ui/home_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FlashPage extends StatefulWidget {
  const FlashPage({super.key});

  @override
  State<StatefulWidget> createState() => _FlashPAgeState();
}

class _FlashPAgeState extends State<FlashPage> {
  String? check;
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () async{
      SharedPreferences? pref = await SharedPreferences.getInstance();
      check = pref.getString("${pref.getString("UID")}") ?? '';
      Widget navigetTo = check!.isNotEmpty ? const HomePage() : const LoginPage();
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => navigetTo));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.zero,
                width: MediaQuery.of(context).size.width * 0.80,
                height: MediaQuery.of(context).size.width * 0.80,
                child: Image.asset("assets/images/other_images/shoppingtrolly.png")
            ),
            const SizedBox(height: 4),
            const Center(child: CircularProgressIndicator(color: Colors.deepPurple),)
          ],
        ),
      ),
    );
  }
}
