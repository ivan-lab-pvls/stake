import 'package:flutter/material.dart';
import 'package:stake_lounge/data/product.dart';
import 'package:stake_lounge/features/cart/widgets/cart_delete_button.dart';
import 'package:stake_lounge/features/food/product/widgets/product_category.dart';
import 'package:stake_lounge/features/food/product/widgets/product_image.dart';
import 'package:stake_lounge/features/food/product/widgets/product_name.dart';
import 'package:stake_lounge/features/food/product/widgets/product_price.dart';
import 'package:stake_lounge/shared/widgets/custom_container.dart';

class CartItemWidget extends StatelessWidget {
  const CartItemWidget({
    super.key,
    required this.cartItem,
  });

  final Product cartItem;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
        child: Row(
      children: [
        Expanded(
          flex: 2,
          child: ProductImage(product: cartItem),
        ),
        const SizedBox(width: 8),
        Expanded(
          flex: 5,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            ProductName(product: cartItem),
            ProductCategory(product: cartItem),
            ProductPrice(product: cartItem),
          ]),
        ),
        Expanded(
          flex: 1,
          child: CartDeleteButton(cartItem: cartItem),
        ),
      ],
    ));
  }
}
