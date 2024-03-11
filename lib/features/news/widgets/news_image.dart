import 'package:flutter/cupertino.dart';
import 'package:stake_lounge/const.dart';
import 'package:stake_lounge/data/news.dart';

class NewsImage extends StatelessWidget {
  const NewsImage({
    super.key,
    required this.news,
  });

  final News news;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(radius),
      child: Image.asset(
        news.assetPath,
        height: 154,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
