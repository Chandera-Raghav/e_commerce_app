import 'package:e_commerce_app/ui/category_model/category_model.dart';
import 'package:flutter/material.dart';

import '../../product_details_screen/product_details.dart';

class ProductCart extends StatelessWidget {
  final ProductModel product;
  const ProductCart({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const ProductDetailsScreen()));
      },
      child: Stack(
        children: [
          Container(
            width: 200,
            height: 210,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.withOpacity(0.20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 40,
                    height: 35,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5)),
                      color: Colors.deepOrange,
                    ),
                    child: const Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white70,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(product.image,
                      width: 70, height: 70, fit: BoxFit.cover),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    product.title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "\$${product.price}",
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: List.generate(
                          product.colors.length,
                          (index) => Container(
                                width: 18,
                                height: 18,
                                margin: const EdgeInsets.only(right: 4),
                                decoration: BoxDecoration(
                                    color: product.colors[index],
                                    shape: BoxShape.circle),
                              )),
                    )
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
