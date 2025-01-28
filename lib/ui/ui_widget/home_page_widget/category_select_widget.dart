import 'package:e_commerce_app/data/local/listOfCategory.dart';
import 'package:flutter/material.dart';

class CategorySelectWidget extends StatelessWidget{
  const CategorySelectWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        margin: EdgeInsets.zero,
        height: 130,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: category.length,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.withOpacity(0.20),
                      image: DecorationImage(
                        alignment: Alignment.center,
                          image: AssetImage(category[index].imgPath),
                        fit: BoxFit.cover
                          ),
                  ),
                ),
                const SizedBox(height: 5,),
                Text(category[index].title)
              ],
            );
          },
          separatorBuilder: (context, index) => const SizedBox(width: 20),
        ),
      ),
    );
  }
}