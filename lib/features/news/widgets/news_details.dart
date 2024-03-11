import 'package:flutter/material.dart';
import 'package:stake_lounge/const.dart';
import 'package:stake_lounge/data/news.dart';
import 'package:stake_lounge/features/news/widgets/news_content.dart';
import 'package:stake_lounge/features/news/widgets/news_image.dart';
import 'package:stake_lounge/features/news/widgets/news_title.dart';
import 'package:stake_lounge/shared/widgets/custom_container.dart';

class NewsDetails extends StatelessWidget {
  const NewsDetails({
    super.key,
    required this.news,
  });

  final News? news;

  @override
  Widget build(BuildContext context) {
    return news != null
        ? SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(right: 8, left: 8),
              child: Column(
                children: [
                  whiteSpace,
                  CustomContainer(
                    customPadding: padding,
                    child: NewsImage(news: news!),
                  ),
                  whiteSpace,
                  CustomContainer(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      NewsTitle(news: news!),
                      const SizedBox(height: 20),
                      NewsContent(news: news!),
                    ],
                  )),
                  whiteSpace,
                ],
              ),
            ),
          )
        : const Center(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: CustomContainer(
                child: Text(
                  'No news selected',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          );
  }
}
