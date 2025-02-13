import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductTopBar extends StatelessWidget{
  const ProductTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(10),
      child: Container(
        margin: EdgeInsets.zero,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          IconButton(onPressed: (){Navigator.pop(context);},
              style: IconButton.styleFrom(
                padding: const EdgeInsets.all(15),
                backgroundColor: Colors.white
              ),
              iconSize: 30,
              icon: const Icon(Icons.arrow_back_outlined)
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            width: MediaQuery.of(context).size.width*0.50,
            height: MediaQuery.of(context).size.width*0.60,
            child: Image.asset("assets/images/sub_cat_images/i_phone1.jpg", fit: BoxFit.cover,),),
          IconButton(onPressed: (){},
              style: IconButton.styleFrom(
                padding: const EdgeInsets.all(15),
                backgroundColor: Colors.white
              ),
              iconSize: 30,
              icon: const Icon(Icons.share_outlined)
          ),
          IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.heart),
            iconSize: 30,
            style: IconButton.styleFrom(
              padding: const EdgeInsets.all(10),
              backgroundColor: Colors.white
            ),
          )
        ],),
      ),
    );

  }
}