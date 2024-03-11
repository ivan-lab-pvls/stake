import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stake_lounge/const.dart';
import 'package:stake_lounge/data/hive/box.dart';
import 'package:stake_lounge/data/product.dart';
import 'package:stake_lounge/features/cart/cart_screen.dart';
import 'package:stake_lounge/features/food/product/widgets/product_category.dart';
import 'package:stake_lounge/features/food/product/widgets/product_image.dart';
import 'package:stake_lounge/features/food/product/widgets/product_name.dart';
import 'package:stake_lounge/features/food/product/widgets/product_price.dart';
import 'package:stake_lounge/main.dart';
import 'package:stake_lounge/router/router.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.router.push(ProductRoute(product: product)),
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ProductImage(product: product),
            ),
            ProductName(product: product),
            ProductCategory(product: product),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProductPrice(product: product),
                GetBuilder(
                  init: cartController,
                  builder: (_) {
                    final itemExistsInCart = cart.containsKey(product.name);
                    return CupertinoButton(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        color: itemExistsInCart ? accentColor : Colors.white,
                        borderRadius: BorderRadius.circular(100),
                        child: Row(
                          children: [
                            Text(
                              itemExistsInCart ? 'In cart' : 'Add to cart',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Roboto',
                                  color: itemExistsInCart
                                      ? Colors.white
                                      : accentColor),
                            ),
                            if (itemExistsInCart) Icon(Icons.check_rounded),
                          ],
                        ),
                        onPressed: () => cartController.addItem(product));
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
