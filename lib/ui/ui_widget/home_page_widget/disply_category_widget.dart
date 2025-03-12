import 'package:e_commerce_app/ui/category_model/category_model.dart';
import 'package:e_commerce_app/ui/ui_widget/product_cart_widget/product_cart_widget.dart';
import 'package:flutter/material.dart';

class DisplayCategoryWidget extends StatelessWidget {
  const DisplayCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        margin: EdgeInsets.zero,
        child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.78,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2),
            itemCount: products.length,
            itemBuilder: (context, index) {
              return ProductCart(product: products[index]);
            }),
      ),
    );
  }
}
