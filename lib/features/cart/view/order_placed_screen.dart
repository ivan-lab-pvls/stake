import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stake_lounge/features/cart/view/cart_screen.dart';
import 'package:stake_lounge/shared/widgets/custom_button.dart';
import 'package:stake_lounge/shared/widgets/custom_container.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../../const.dart';
import '../../../shared/widgets/custom_app_bar.dart';

@RoutePage()
class OrderPlacedScreen extends StatelessWidget {
  const OrderPlacedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order'),
        automaticallyImplyLeading: false,
        backgroundColor: scaffoldColor,
      ),
      body: Container(
        color: scaffoldColor,
        child: SafeArea(
          child: Container(
            color: Colors.white,
            child: CustomScrollView(
              physics: const NeverScrollableScrollPhysics(),
              slivers: [
                const CustomAppBar(
                  assetPath: 'assets/page_headers/order.png',
                  padding: EdgeInsets.zero,
                  automaticallyImplyLeading: false,
                ),
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      whiteSpace,
                      CustomContainer(
                          child: Container(
                        padding: padding,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(radius)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            QrImageView(
                              data: UniqueKey().toString(),
                              version: QrVersions.auto,
                              size: 250,
                            ),
                          ],
                        ),
                      )),
                      CustomContainer(
                          child: Column(
                        children: [
                          const Text('Order placed'),
                          CustomButton(
                              title: 'Done',
                              onPressed: (p0) {
                                cartController.clearCart();
                                context.router.pop();
                              },
                              color: accentColor,
                              textColor: Colors.white)
                        ],
                      ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
