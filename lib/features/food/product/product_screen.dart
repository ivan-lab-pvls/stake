import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stake_lounge/const.dart';
import 'package:stake_lounge/data/hive/box.dart';
import 'package:stake_lounge/data/product.dart';
import 'package:stake_lounge/features/cart/cart_screen.dart';
import 'package:stake_lounge/features/food/selection/selection_widget.dart';
import 'package:stake_lounge/features/food/product/widgets/product_category.dart';
import 'package:stake_lounge/features/food/product/widgets/product_name.dart';
import 'package:stake_lounge/features/food/product/widgets/product_price.dart';
import 'package:stake_lounge/shared/custom_button.dart';
import 'package:stake_lounge/shared/custom_container.dart';
import 'package:stake_lounge/shared/custom_container_top.dart';

import '../selection/selection.dart';

@RoutePage()
class ProductScreen extends StatelessWidget {
  final Product product;
  const ProductScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final productsOfThisCategory = Product.productList
        .where((prod) => prod.category == product.category)
        .toList();

    productsOfThisCategory.remove(product);

    final selection = Selection(
        title: 'From this category',
        products: productsOfThisCategory,
        isCategory: true);

    return Scaffold(
      appBar: AppBar(
          backgroundColor: secondaryColor,
          title: const Text(
            'Dish Info',
            style: TextStyle(fontWeight: FontWeight.w500),
          )),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  CustomContainerTop(
                      padding: padding,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(radius),
                        ),
                        child: Image.asset(
                          product.assetPath,
                          height: 265,
                        ),
                      )),
                  whiteSpace,
                  CustomContainer(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ProductName(product: product, fontSize: 20),
                          ProductPrice(product: product, fontSize: 20),
                        ],
                      ),
                      ProductCategory(product: product),
                      const SizedBox(height: 10),
                      GetBuilder(
                        init: cartController,
                        builder: (_) {
                          final itemExistsInCart =
                              cart.containsKey(product.name);
                          return CustomButton(
                              customPadding: EdgeInsets.zero,
                              title:
                                  itemExistsInCart ? 'In cart' : 'Add to cart',
                              onPressed: (p0) =>
                                  cartController.addItem(product),
                              color:
                                  itemExistsInCart ? Colors.white : accentColor,
                              textColor: itemExistsInCart
                                  ? accentColor
                                  : Colors.white);
                        },
                      ),
                    ],
                  )),
                  whiteSpace,
                  SelectionWidget(
                    selection: selection,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
