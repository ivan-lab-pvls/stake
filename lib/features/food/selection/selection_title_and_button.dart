import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:stake_lounge/const.dart';
import 'package:stake_lounge/features/food/selection/selection.dart';
import 'package:stake_lounge/router/router.dart';

class TitleAndButton extends StatelessWidget {
  const TitleAndButton({
    super.key,
    required this.selection,
  });

  final Selection selection;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            selection.title,
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
          CupertinoButton(
              padding: EdgeInsets.zero,
              child: const Text(
                'See all',
                style: TextStyle(
                  color: accentColor,
                  fontFamily: 'Roboto',
                ),
              ),
              onPressed: () {
                if (!selection.isCategory) {
                  context.router.push(SelectionRoute(selection: selection));
                } else {
                  context.router.push(
                      CategoryRoute(category: selection.products[0].category));
                }
              })
        ],
      ),
    );
  }
}
