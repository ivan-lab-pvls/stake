import 'package:flutter/material.dart';
import 'package:stake_lounge/const.dart';
import 'package:stake_lounge/data/product.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(radius),
      ),
      child: Image.asset(
        product.assetPath,
        width: double.infinity,
      ),
    );
  }
}
