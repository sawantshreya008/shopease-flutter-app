import 'package:flutter/material.dart';

class ShopCategory {
  final String name;
  final IconData icon;
  final Color color;
  final LinearGradient gradient;

  const ShopCategory({
    required this.name,
    required this.icon,
    required this.color,
    required this.gradient,
  });
}

class Product {
  final String id;
  final String name;
  final String category;
  final String brand;
  final double price;
  final double rating;
  final int discount;
  final IconData icon;
  final Color accentColor;
  final List<String> sizes;
  final List<String> colors;
  final String description;
  final bool isNew;

  const Product({
    required this.id,
    required this.name,
    required this.category,
    required this.brand,
    required this.price,
    required this.rating,
    required this.discount,
    required this.icon,
    required this.accentColor,
    required this.sizes,
    required this.colors,
    required this.description,
    required this.isNew,
  });
}

class ShopOrder {
  final String id;
  final String date;
  final double amount;
  final String status;
  final List<String> items;

  const ShopOrder({
    required this.id,
    required this.date,
    required this.amount,
    required this.status,
    required this.items,
  });
}

const List<ShopCategory> categories = [
  ShopCategory(
    name: 'Fashion',
    icon: Icons.checkroom_rounded,
    color: Color(0xFF5B8DEF),
    gradient: LinearGradient(
      colors: [Color(0xFF5B8DEF), Color(0xFF7DA9FF)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  ),
  ShopCategory(
    name: 'Electronics',
    icon: Icons.devices_rounded,
    color: Color(0xFFF5B700),
    gradient: LinearGradient(
      colors: [Color(0xFFF5B700), Color(0xFFFFD66F)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  ),
  ShopCategory(
    name: 'Shoes',
    icon: Icons.sports_soccer_rounded,
    color: Color(0xFF25B39A),
    gradient: LinearGradient(
      colors: [Color(0xFF25B39A), Color(0xFF70E0CB)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  ),
  ShopCategory(
    name: 'Beauty',
    icon: Icons.auto_awesome_rounded,
    color: Color(0xFFE67E93),
    gradient: LinearGradient(
      colors: [Color(0xFFE67E93), Color(0xFFF3A7B8)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  ),
  ShopCategory(
    name: 'Accessories',
    icon: Icons.watch_rounded,
    color: Color(0xFF7C5CFF),
    gradient: LinearGradient(
      colors: [Color(0xFF7C5CFF), Color(0xFFB29CFF)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  ),
];

const List<Product> mockProducts = [
  Product(
    id: 'P-101',
    name: 'Aurelia Tote',
    category: 'Fashion',
    brand: 'Aurelia',
    price: 2499,
    rating: 4.8,
    discount: 22,
    icon: Icons.shopping_bag_rounded,
    accentColor: Color(0xFF073B6F),
    sizes: ['S', 'M', 'L'],
    colors: ['Navy', 'Gold'],
    description:
        'A refined everyday tote crafted for work, travel and weekend plans.',
    isNew: true,
  ),
  Product(
    id: 'P-102',
    name: 'Nova Smart Watch',
    category: 'Electronics',
    brand: 'Nova',
    price: 6999,
    rating: 4.7,
    discount: 15,
    icon: Icons.watch_rounded,
    accentColor: Color(0xFFD8A62A),
    sizes: ['41mm', '45mm'],
    colors: ['Silver', 'Black'],
    description:
        'High-performance wellness watch with sleek design and smart tracking.',
    isNew: false,
  ),
  Product(
    id: 'P-103',
    name: 'Urban Runner',
    category: 'Shoes',
    brand: 'Stride',
    price: 3199,
    rating: 4.9,
    discount: 18,
    icon: Icons.sports_soccer_rounded,
    accentColor: Color(0xFF1A9C8F),
    sizes: ['6', '7', '8', '9'],
    colors: ['White', 'Black'],
    description:
        'Lightweight cushioning and breathable support for all-day comfort.',
    isNew: true,
  ),
  Product(
    id: 'P-104',
    name: 'Velvet Glow',
    category: 'Beauty',
    brand: 'Luma',
    price: 1499,
    rating: 4.6,
    discount: 12,
    icon: Icons.auto_awesome_rounded,
    accentColor: Color(0xFFD85A90),
    sizes: ['30ml'],
    colors: ['Rose', 'Pearl'],
    description:
        'Hydrating glow serum designed for a luminous, healthy finish.',
    isNew: false,
  ),
  Product(
    id: 'P-105',
    name: 'Halo Sunglasses',
    category: 'Accessories',
    brand: 'Solstice',
    price: 2199,
    rating: 4.5,
    discount: 20,
    icon: Icons.visibility_rounded,
    accentColor: Color(0xFF4C5BD7),
    sizes: ['One Size'],
    colors: ['Blue', 'Black'],
    description:
        'UV-protected statement sunglasses with a premium matte finish.',
    isNew: true,
  ),
  Product(
    id: 'P-106',
    name: 'Luna Headphones',
    category: 'Electronics',
    brand: 'Luna',
    price: 4599,
    rating: 4.8,
    discount: 25,
    icon: Icons.headphones_rounded,
    accentColor: Color(0xFFAE6A35),
    sizes: ['Standard'],
    colors: ['Ivory', 'Graphite'],
    description:
        'Immersive wireless audio for work, travel, and everyday focus.',
    isNew: false,
  ),
];

final List<Product> wishlistProducts = [
  mockProducts[0],
  mockProducts[2],
  mockProducts[4],
];

final List<Product> cartProducts = [mockProducts[0], mockProducts[2]];

final List<ShopOrder> mockOrders = [
  const ShopOrder(
    id: 'SO-28471',
    date: '12 Sep 2026',
    amount: 4599,
    status: 'Delivered',
    items: ['Aurelia Tote', 'Urban Runner'],
  ),
  const ShopOrder(
    id: 'SO-28482',
    date: '23 Sep 2026',
    amount: 3199,
    status: 'Shipped',
    items: ['Urban Runner'],
  ),
  const ShopOrder(
    id: 'SO-28494',
    date: '27 Sep 2026',
    amount: 6999,
    status: 'Processing',
    items: ['Nova Smart Watch'],
  ),
];
