import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stake_lounge/const.dart';
import 'package:stake_lounge/data/product.dart';
import 'package:stake_lounge/features/cart/cart_screen.dart';

class CartDeleteButton extends StatelessWidget {
  const CartDeleteButton({
    super.key,
    required this.cartItem,
  });

  final Product cartItem;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () => cartController.deleteItem(cartItem.name),
      child: Container(
        width: 80,
        height: 80,
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
          color: secondaryColor,
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset('assets/icons/delete.svg'),
      ),
    );
  }
}
