import 'package:flutter/material.dart';

class TopWidget extends StatelessWidget {
  const TopWidget({super.key});



  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  width: MediaQuery.of(context).size.width*0.10,
                  height: MediaQuery.of(context).size.width*0.10,
                  decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(50), color: Colors.grey.withOpacity(0.20)),
                  child: Image.asset("assets/icons/logo.png", )),
              Container(
                  decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(50), color: Colors.grey.withOpacity(0.20)),
                  height: MediaQuery.of(context).size.width*0.10,
                  width: MediaQuery.of(context).size.width*0.10,
                  child: const Icon(Icons.notifications_none_outlined))
            ],
          ),
        ));
  }
}
