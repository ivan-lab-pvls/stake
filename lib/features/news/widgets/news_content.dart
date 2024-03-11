import 'package:flutter/material.dart';
import 'package:stake_lounge/const.dart';
import 'package:stake_lounge/data/news.dart';

class NewsContent extends StatelessWidget {
  const NewsContent({
    super.key,
    required this.news,
  });

  final News news;

  @override
  Widget build(BuildContext context) {
    return Text(
      news.content,
      style: TextStyle(
          fontWeight: FontWeight.w500, color: secondaryColor.withOpacity(0.4)),
    );
  }
}
