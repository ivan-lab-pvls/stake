import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stake_lounge/data/news.dart';
import 'package:stake_lounge/features/news/widgets/news_details.dart';

@RoutePage()
class SingleNewsScreen extends StatelessWidget {
  final News? news;
  const SingleNewsScreen({super.key, this.news});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News'),
      ),
      body: SafeArea(
        child: NewsDetails(news: news),
      ),
    );
  }
}
