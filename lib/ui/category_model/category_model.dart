
import 'package:flutter/material.dart';


class ProductModel {
  final String title;
  final String description;
  final String image;
  final String review;
  final String seller;
  final double price;
  final List<Color> colors;
  final String category;
  final double rate;
  int quantity;

  ProductModel(
      {required this.title,
      required this.description,
      required this.image,
      required this.review,
      required this.seller,
      required this.price,
      required this.colors,
      required this.category,
      required this.rate,
      required this.quantity});
}

final List<ProductModel> products = [
  ProductModel(
      title: "Nothing Phone 2a 5G Smartphone",
      description: "Nothing Phone 2a mobile was launched on 5th March 2024. The phone comes with a 120 Hz refresh rate 6.70-inch touchscreen display offering a resolution of 1080x2412 pixels (FHD+) at a pixel density of 394 pixels per inch (ppi).",
      image: "assets/images/sub_cat_images/smart_phone2.png",
      review: "(30 Reviews)",
      seller: "Josan oyanl",
      price: 2305.20,
      colors: [
        Colors.black,
        Colors.blue,
        Colors.red
      ],
      category: "Smart Phone",
      rate: 4.5,
      quantity: 1),
  ProductModel(
      title: "Samsung 556GB",
      description: "Nothing Phone 2a mobile was launched on 5th March 2024. The phone comes with a 120 Hz refresh rate 6.70-inch touchscreen display offering a resolution of 1080x2412 pixels (FHD+) at a pixel density of 394 pixels per inch (ppi).",
      image: "assets/images/sub_cat_images/ssd3.jpg",
      review: "(80 Reviews)",
      seller: "Sany ronal",
      price: 9505.70,
      colors: [
        Colors.black,
        Colors.blue,
        Colors.red
      ],
      category: "Memory disk",
      rate: 4.7,
      quantity: 1),
  ProductModel(
      title: "WROGN",
      description: "Men White Blue Printed Slim Fit Polo Collar Pure Cotton T-shirt",
      image: "assets/images/sub_cat_images/t_shirt1.jpg",
      review: "(50 Reviews)",
      seller: "Jeyn bronada",
      price: 305.10,
      colors: [
        Colors.white,
        Colors.blue,
        Colors.red
      ],
      category: "T-Shirt",
      rate: 4.6,
      quantity: 1),
  ProductModel(
      title: "Buy iPhone 16 Pro",
      description: "Monthly pricing is after purchase using EMI with qualifying cards at 15.99% p.a. over a 12‑month tenure. Monthly pricing is rounded to the nearest rupee. Exact pricing will be provided by your card issuer, subject to your card issuer’s terms and conditions.",
      image: "assets/images/sub_cat_images/smart_phone2.png",
      review: "(180 Reviews)",
      seller: "Jotian okyanl",
      price: 53005.20,
      colors: [
        Colors.black,
        Colors.blue,
        Colors.red
      ],
      category: "iPhone",
      rate: 4.9,
      quantity: 1),
  ProductModel(
      title: "Buy iPhone 16 Pro",
      description: "Monthly pricing is after purchase using EMI with qualifying cards at 15.99% p.a. over a 12‑month tenure. Monthly pricing is rounded to the nearest rupee. Exact pricing will be provided by your card issuer, subject to your card issuer’s terms and conditions.",
      image: "assets/images/sub_cat_images/smart_phone2.png",
      review: "(180 Reviews)",
      seller: "Jotian okyanl",
      price: 53005.20,
      colors: [
        Colors.black,
        Colors.blue,
        Colors.red
      ],
      category: "iPhone",
      rate: 4.9,
      quantity: 1),
  ProductModel(
      title: "Buy iPhone 16 Pro",
      description: "Monthly pricing is after purchase using EMI with qualifying cards at 15.99% p.a. over a 12‑month tenure. Monthly pricing is rounded to the nearest rupee. Exact pricing will be provided by your card issuer, subject to your card issuer’s terms and conditions.",
      image: "assets/images/sub_cat_images/smart_phone2.png",
      review: "(180 Reviews)",
      seller: "Jotian okyanl",
      price: 53005.20,
      colors: [
        Colors.black,
        Colors.blue,
        Colors.red
      ],
      category: "iPhone",
      rate: 4.9,
      quantity: 1),
  ProductModel(
      title: "Buy iPhone 16 Pro",
      description: "Monthly pricing is after purchase using EMI with qualifying cards at 15.99% p.a. over a 12‑month tenure. Monthly pricing is rounded to the nearest rupee. Exact pricing will be provided by your card issuer, subject to your card issuer’s terms and conditions.",
      image: "assets/images/sub_cat_images/smart_phone2.png",
      review: "(180 Reviews)",
      seller: "Jotian okyanl",
      price: 53005.20,
      colors: [
        Colors.black,
        Colors.blue,
        Colors.red
      ],
      category: "iPhone",
      rate: 4.9,
      quantity: 1),
  ProductModel(
      title: "Buy iPhone 16 Pro",
      description: "Monthly pricing is after purchase using EMI with qualifying cards at 15.99% p.a. over a 12‑month tenure. Monthly pricing is rounded to the nearest rupee. Exact pricing will be provided by your card issuer, subject to your card issuer’s terms and conditions.",
      image: "assets/images/sub_cat_images/smart_phone2.png",
      review: "(180 Reviews)",
      seller: "Jotian okyanl",
      price: 53005.20,
      colors: [
        Colors.black,
        Colors.blue,
        Colors.red
      ],
      category: "iPhone",
      rate: 4.9,
      quantity: 1),
  ];
