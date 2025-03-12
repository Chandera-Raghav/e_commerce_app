import 'package:e_commerce_app/data/local/ui_helper.dart';
import 'package:flutter/material.dart';

class ProductTopBar extends StatelessWidget {
  const ProductTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.50,
      child: Row(
      // crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InkWell(
          onTap: (){
          },
          child: Align(
            child: Container(
              padding: const EdgeInsets.all(0.10),
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white
              ),
              child: const Icon(Icons.keyboard_arrow_left_outlined),
            ),
          ),
        ),
        mSpacer(mWidth: MediaQuery.of(context).size.width-150),
        Container(
          padding: const EdgeInsets.all(0.10),
          width: 30,
          height: 30,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white
          ),
          child: const Icon(Icons.share_outlined),
        ),
        Container(width: 30, height: 30,
          padding: const EdgeInsets.all(0.20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white
          ),

          child: const Icon(Icons.favorite_border_outlined),
        )
      ],
    ),
    );
  }
}
