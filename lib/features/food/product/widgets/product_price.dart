import 'package:flutter/cupertino.dart';
import 'package:stake_lounge/const.dart';
import 'package:stake_lounge/data/product.dart';
import 'package:stake_lounge/shared/func/price_to_string.dart';

class ProductPrice extends StatelessWidget {
  final double? fontSize;
  const ProductPrice({
    super.key,
    required this.product,
    this.fontSize,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Text(
      priceToString(product.price),
      style: TextStyle(
          fontWeight: FontWeight.w500,
          color: accentColor,
          fontSize: fontSize ?? 16),
    );
  }
}
