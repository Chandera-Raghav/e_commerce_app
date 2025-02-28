import 'package:flutter/material.dart';

class ProductTopBar extends StatelessWidget {
  const ProductTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.50,
      child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          onTap: (){
          },
          child: Align(
            child: Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white
              ),
              child: const Icon(Icons.keyboard_arrow_left_outlined),
            ),
          ),
        ),

        Container(
          width: 25,
          height: 25,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white
          ),
          child: const Icon(Icons.share_outlined),
        ),
        Container(width: 25, height: 25,
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
