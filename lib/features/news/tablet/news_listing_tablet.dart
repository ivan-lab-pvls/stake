import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stake_lounge/const.dart';
import 'package:stake_lounge/data/news.dart';
import 'package:stake_lounge/features/news/widgets/news_image.dart';
import 'package:stake_lounge/features/news/widgets/news_title.dart';
import 'package:stake_lounge/shared/custom_container.dart';

class NewsListingTablet extends StatelessWidget {
  const NewsListingTablet({super.key, required this.itemSelectedCallback});
  final ValueChanged<News> itemSelectedCallback;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView.separated(
        itemCount: newsList.length + 2,
        itemBuilder: (context, index) {
          if (index == 0 || index == newsList.length + 1) {
            return const SizedBox.shrink();
          } else {
            final news = newsList[index - 1];
            return Padding(
              padding: const EdgeInsets.only(left: 16),
              child: CupertinoButton(
                padding: EdgeInsets.zero,
                onPressed: () => itemSelectedCallback(news),
                child: CustomContainer(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    NewsTitle(news: news),
                  ],
                )),
              ),
            );
          }
        },
        separatorBuilder: (context, index) => const SizedBox(height: 8),
      ),
    );
  }
}
