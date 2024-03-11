import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stake_lounge/data/product.dart';
import 'package:stake_lounge/features/food/category/category.dart';
import 'package:stake_lounge/features/food/product/view/product_grid_view.dart';

@RoutePage()
class CategoryScreen extends StatelessWidget {
  final Category category;
  const CategoryScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final List<Product> productsOfThisCategory = Product.productList
        .where((product) => product.category == category)
        .toList();
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(onPressed: () => context.router.pop()),
        title: Text(category.name.capitalize!),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            ProductGridView(
              length: productsOfThisCategory.length,
              productList: productsOfThisCategory,
            ),
          ],
        ),
      ),
    );
  }
}
