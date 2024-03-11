import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stake_lounge/const.dart';
import 'package:stake_lounge/features/food/category/category.dart';
import 'package:stake_lounge/router/router.dart';
import 'package:stake_lounge/shared/widgets/custom_container.dart';

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double spacing = 8;
    return CustomContainer(
      child: Wrap(
        spacing: spacing,
        runSpacing: spacing,
        children: List.generate(
            Category.values.length,
            (index) => CupertinoButton(
                  padding: EdgeInsets.zero,
                  onPressed: () => context.router
                      .push(CategoryRoute(category: Category.values[index])),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(radius)),
                    width: MediaQuery.of(context).size.width / 3 - spacing * 2,
                    height: MediaQuery.of(context).size.width / 3 - spacing * 2,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Image.asset(
                            Category.values[index].assetPath,
                            width: MediaQuery.of(context).size.width / 5,
                            height: MediaQuery.of(context).size.width / 5,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: padding,
                            child: Text(
                              Category.values[index].name.capitalize!,
                              style: const TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
      ),
    );
  }
}
