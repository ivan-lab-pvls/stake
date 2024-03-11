import 'package:flutter/cupertino.dart';
import 'package:stake_lounge/const.dart';
import 'package:stake_lounge/data/news.dart';
import 'package:stake_lounge/features/news/widgets/news_image.dart';
import 'package:stake_lounge/features/news/widgets/news_title.dart';
import 'package:stake_lounge/shared/custom_container.dart';

class NewsListingMobile extends StatelessWidget {
  const NewsListingMobile({super.key, required this.itemSelectedCallback});
  final ValueChanged<News> itemSelectedCallback;

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: newsList.length + 2,
      itemBuilder: (context, index) {
        if (index == 0 || index == newsList.length + 1) {
          return SizedBox.shrink();
        } else {
          final news = newsList[index - 1];
          return CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () => itemSelectedCallback(news),
            child: CustomContainer(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NewsImage(news: news),
                whiteSpace,
                NewsTitle(news: news),
              ],
            )),
          );
        }
      },
      separatorBuilder: (context, index) => whiteSpace,
    );
  }
}
