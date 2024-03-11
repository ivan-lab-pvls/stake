import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:stake_lounge/const.dart';
import 'package:stake_lounge/data/hive/box.dart';
import 'package:stake_lounge/data/product.dart';
import 'package:stake_lounge/features/cart/widgets/cart_item_widget.dart';
import 'package:stake_lounge/features/cart/widgets/empty_cart_placeholder.dart';
import 'package:stake_lounge/router/router.dart';
import 'package:stake_lounge/shared/widgets/custom_button.dart';
import 'package:stake_lounge/shared/widgets/custom_app_bar.dart';
import 'package:stake_lounge/shared/widgets/custom_container.dart';
import 'package:stake_lounge/shared/widgets/custom_container_bottom.dart';
import 'package:stake_lounge/shared/func/price_to_string.dart';

final cartController = CartController();
int index = 0;

@RoutePage()
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: cartController,
      builder: (controller) => Scaffold(
        body: Container(
          color: scaffoldColor,
          child: SafeArea(
            child: Container(
              color: Colors.white,
              child: GetBuilder(
                init: cartController,
                builder: (_) => CustomScrollView(
                  physics: cart.isEmpty
                      ? const NeverScrollableScrollPhysics()
                      : null,
                  slivers: [
                    const CustomAppBar(
                      title: 'Cart',
                      assetPath: 'assets/page_headers/cart.png',
                    ),
                    if (cart.isEmpty)
                      const EmptyCartPlaceholder()
                    else
                      SliverList.separated(
                        itemCount: cart.length + 2,
                        itemBuilder: (context, index) {
                          if (index == 0 || index == cart.length + 1) {
                            return const SizedBox.shrink();
                          } else {
                            final cartItem = cart.getAt(index - 1) as Product;
                            return CartItemWidget(cartItem: cartItem);
                          }
                        },
                        separatorBuilder: (context, index) => whiteSpace,
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: cart.isNotEmpty
            ? CustomContainerBottom(
                padding: padding,
                child: SizedBox(
                  height: 140,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Total',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            priceToString(cartTotal()),
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: accentColor,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Text(
                            'Items: ',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'x ${cart.length.toString()}',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: secondaryColor.withOpacity(0.4),
                            ),
                          ),
                        ],
                      ),
                      CustomButton(
                          title: 'Place order',
                          onPressed: (p0) {
                            context.router.push(const OrderPlacedRoute());
                          },
                          color: accentColor,
                          textColor: Colors.white),
                    ],
                  ),
                ),
              )
            : null,
      ),
    );
  }
}

class CartController extends GetxController {
  addItem(Product product) {
    cart.put(product.name, product);
    update();
  }

  deleteItem(String value) {
    cart.delete(value);
    update();
  }

  clearCart() {
    cart.clear();
    update();
  }
}

cartTotal() {
  double sum = 0;
  for (var i = 0; i < cart.length; i++) {
    sum += cart.getAt(i).price;
  }
  return sum;
}
