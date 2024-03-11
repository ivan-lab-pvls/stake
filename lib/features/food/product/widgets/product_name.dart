import 'package:flutter/material.dart';
import 'package:stake_lounge/data/product.dart';

class ProductName extends StatelessWidget {
  final double? fontSize;
  const ProductName({
    super.key,
    required this.product,
    this.fontSize,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Text(
      product.name,
      style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: fontSize ?? 16),
    );
  }
}
