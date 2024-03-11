import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stake_lounge/features/food/product/view/product_grid_view.dart';

import '../selection.dart';

@RoutePage()
class SelectionScreen extends StatelessWidget {
  final Selection selection;
  const SelectionScreen({super.key, required this.selection});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(selection.title)),
      body: SafeArea(
        child: Stack(
          children: [
            ProductGridView(
              length: selection.products.length,
              productList: selection.products,
            ),
          ],
        ),
      ),
    );
  }
}
