import 'package:flutter/material.dart';
import 'package:stake_lounge/data/product.dart';
import 'package:stake_lounge/features/food/product/widgets/product_widget.dart';
import 'package:stake_lounge/shared/widgets/custom_container.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({
    super.key,
    required this.length,
    required this.productList,
  });

  final int length;
  final List<Product> productList;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: GridView.count(
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 0.8,
        crossAxisCount: 2,
        children: [
          ...List.generate(
              length,
              (index) =>
                  SizedBox(child: ProductWidget(product: productList[index]))),
        ],
      ),
    );
  }
}
