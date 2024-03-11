import 'package:flutter/cupertino.dart';
import 'package:stake_lounge/const.dart';
import 'package:stake_lounge/features/food/selection/selection.dart';
import 'package:stake_lounge/features/food/product/product_widget.dart';
import 'package:stake_lounge/features/food/selection/selection_title_and_button.dart';
import 'package:stake_lounge/shared/custom_container.dart';

class SelectionWidget extends StatelessWidget {
  final Selection selection;
  const SelectionWidget({
    super.key,
    required this.selection,
  });

  @override
  Widget build(BuildContext context) {
    final products = selection.products;
    return CustomContainer(
        customPadding: const EdgeInsets.only(top: 16, bottom: 16),
        child: Column(
          children: [
            TitleAndButton(selection: selection),
            SizedBox(
              height: MediaQuery.of(context).size.height / 3,
              child: ListView.separated(
                padding: padding,
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return ProductWidget(product: product);
                },
                separatorBuilder: (context, index) => const SizedBox(width: 16),
              ),
            )
          ],
        ));
  }
}
