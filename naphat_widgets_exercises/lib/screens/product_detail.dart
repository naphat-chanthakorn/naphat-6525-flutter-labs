/// Product Detail
///
/// This widget is
///
/// ============================================
/// AI DOCUMENTATION
/// No AI tools were used for this file.
/// All code written independently.
///
/// ============================================
///
/// Author: Naphat Chanthakorn
/// Version: 1.0.0
/// Date: 2026-01-27
library;

import 'package:flutter/material.dart';
import '../models/product_model.dart';
import '../components/star_rating.dart';

class ProductDetail extends StatelessWidget {
  final ProductModel product;

  const ProductDetail({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            product.imageUrl,
            width: 450,
            height: 250,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  '฿${product.price.toStringAsFixed(2)}',
                  style: const TextStyle(fontSize: 20, color: Colors.green),
                ),
                const SizedBox(height: 10),
                StarRating(rating: product.rating, size: 20),
                const SizedBox(height: 15),
                Divider(),
                SizedBox(height: 15),
                Text(
                  'Description',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(product.description, style: const TextStyle(fontSize: 16)),
                const SizedBox(height: 25),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Added to cart')),
                      );
                    },
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.shopping_cart),
                        SizedBox(width: 8),
                        Text('Add to Cart'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
