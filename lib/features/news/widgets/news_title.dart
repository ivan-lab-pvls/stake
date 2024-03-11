import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stake_lounge/data/news.dart';

class NewsTitle extends StatelessWidget {
  const NewsTitle({
    super.key,
    required this.news,
  });

  final News news;

  @override
  Widget build(BuildContext context) {
    return Text(
      news.title,
      style: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontSize: 20,
      ),
    );
  }
}
