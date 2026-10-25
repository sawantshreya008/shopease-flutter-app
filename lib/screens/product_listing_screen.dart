import 'package:flutter/material.dart';

import '../models/product.dart';
import '../utils/app_theme.dart';
import '../widgets/product_card.dart';
import 'product_details_screen.dart';

class ProductListingScreen extends StatelessWidget {
  final String category;

  const ProductListingScreen({super.key, required this.category});

  List<Product> get filteredProducts {
    if (category == 'Wishlist') {
      return wishlistProducts;
    }
    if (category == 'Cart') {
      return cartProducts;
    }
    return mockProducts
        .where((product) => product.category == category)
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final items = filteredProducts;

    return Scaffold(
      backgroundColor: AppTheme.lightBg,
      appBar: AppBar(
        title: Text(
          category,
          style: const TextStyle(
            fontWeight: FontWeight.w800,
            color: AppTheme.navy,
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: AppTheme.navy,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.filter_list_rounded, color: AppTheme.navy),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.sort_rounded, color: AppTheme.navy),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.03),
                      blurRadius: 10,
                      offset: const Offset(0, 6),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    const Icon(Icons.search_rounded, color: AppTheme.textSoft),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Search in ${category.toLowerCase()}',
                        style: const TextStyle(color: AppTheme.textSoft),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 18),
              Expanded(
                child: GridView.builder(
                  itemCount: items.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.72,
                    crossAxisSpacing: 14,
                    mainAxisSpacing: 18,
                  ),
                  itemBuilder: (context, index) {
                    final product = items[index];
                    return ProductCard(
                      product: product,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) =>
                                ProductDetailsScreen(product: product),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
