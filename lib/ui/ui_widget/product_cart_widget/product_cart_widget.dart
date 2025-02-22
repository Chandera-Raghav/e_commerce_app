import 'package:e_commerce_app/ui/category_model/category_model.dart';
import 'package:flutter/material.dart';

import '../../product_details_screen/product_details.dart';

class ProductCart extends StatelessWidget{
  final ProductModel product;
  const ProductCart({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const ProductDetailsScreen()));
      },
      child: Stack(
        children: [
          Container(
            width: double.infinity, decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey.withOpacity(0.20)
          ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15,),
                Center(
                  child: Image.asset(
                    product.image, width: 70, height: 70,
                    fit: BoxFit.cover
                  ),
                ),
                const SizedBox(height: 10,),
                Padding(padding: const EdgeInsets.only(left: 10),
                child: Text(product.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16
                ),),),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("\$${product.price}",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),),
                    Row(children: List.generate(product.colors.length, (index) => Container(
                      width: 18,
                      height: 18,
                      margin: const EdgeInsets.only(right: 4),
                      decoration: BoxDecoration(
                        color: product.colors[index],
                        shape: BoxShape.circle
                      ),
                    )),)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}