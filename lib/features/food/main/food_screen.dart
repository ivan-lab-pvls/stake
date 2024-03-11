import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stake_lounge/const.dart';
import 'package:stake_lounge/features/food/selection/selection.dart';
import 'package:stake_lounge/features/food/main/search.dart';
import 'package:stake_lounge/features/food/category/category_list_widget.dart';
import 'package:stake_lounge/features/food/selection/selection_widget.dart';

@RoutePage()
class FoodScreen extends StatelessWidget {
  const FoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CupertinoTextField(
          placeholder: 'Search',
          onTap: () =>
              showSearch(context: context, delegate: AppSearchDelegate()),
          decoration: const BoxDecoration(border: null),
          prefix: SvgPicture.asset('assets/icons/search.svg'),
        ),
        backgroundColor: secondaryColor,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  whiteSpace,
                  const CategoryListWidget(),
                  whiteSpace,
                  SelectionWidget(selection: Selection.selection1),
                  whiteSpace,
                  SelectionWidget(selection: Selection.selection2),
                  whiteSpace,
                  SelectionWidget(selection: Selection.selection3),
                  whiteSpace,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
