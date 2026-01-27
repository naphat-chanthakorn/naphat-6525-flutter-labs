/// Main Product Gallery
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
import 'models/product_model.dart';
import 'components/product_card.dart';
import 'screens/product_detail.dart';

void main() => runApp(const ProductGalleryApp());

class ProductGalleryApp extends StatelessWidget {
  const ProductGalleryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        brightness: Brightness.light, // Light theme
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.orange,
          brightness: Brightness.dark, // Dark theme
        ),
      ),
      themeMode: ThemeMode.system,
      home: const ProductGalleryScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ProductGalleryScreen extends StatelessWidget {
  const ProductGalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Product Gallery by 663040652-5')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.70,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
          ),
          itemBuilder: (context, index) {
            final product = products[index];
            return ProductCard(
              product: product,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetail(product: product),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
