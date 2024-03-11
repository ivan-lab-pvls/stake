import 'package:flutter/cupertino.dart';
import 'package:stake_lounge/const.dart';

class EmptyCartPlaceholder extends StatelessWidget {
  const EmptyCartPlaceholder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Center(
          child: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height / 3,
          left: MediaQuery.of(context).size.width / 4,
          right: MediaQuery.of(context).size.width / 4,
        ),
        child: Column(
          children: [
            const Text(
              'Cart is empty',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
            ),
            Text(
              'Add items to your cart to begin checkout',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: secondaryColor.withOpacity(0.4)),
            ),
          ],
        ),
      )),
    );
  }
}
