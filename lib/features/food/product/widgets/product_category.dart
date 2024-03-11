import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:stake_lounge/const.dart';
import 'package:stake_lounge/data/product.dart';

class ProductCategory extends StatelessWidget {
  final double? fontSize;
  const ProductCategory({
    super.key,
    required this.product,
    this.fontSize,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Text(
      product.category.name.capitalize!,
      style: TextStyle(
          color: secondaryColor.withOpacity(0.4),
          fontWeight: FontWeight.w500,
          fontSize: fontSize ?? 16),
    );
  }
}
