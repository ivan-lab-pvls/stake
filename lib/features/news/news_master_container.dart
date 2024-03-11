import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stake_lounge/data/news.dart';
import 'package:stake_lounge/features/news/widgets/news_details.dart';
import 'package:stake_lounge/features/news/mobile/news_listing_mobile.dart';
import 'package:stake_lounge/features/news/tablet/news_listing_tablet.dart';
import 'package:stake_lounge/shared/custom_app_bar.dart';

import '../../router/router.dart';

class NewsMasterContainer extends StatefulWidget {
  const NewsMasterContainer({super.key});

  @override
  NewsMasterContainerState createState() => NewsMasterContainerState();
}

class NewsMasterContainerState extends State<NewsMasterContainer> {
  News? _selectedNews;

  Widget _buildMobileLayout() {
    return CustomScrollView(
      slivers: [
        const CustomAppBar(
          title: 'News',
          assetPath: 'assets/page_headers/news.png',
        ),
        NewsListingMobile(
          itemSelectedCallback: (news) =>
              context.router.push(SingleNewsRoute(news: news)),
        )
      ],
    );
  }

  Widget _buildTabletLayout() {
    return CustomScrollView(
      slivers: [
        const CustomAppBar(
          title: 'News',
          assetPath: 'assets/page_headers/news.png',
        ),
        SliverToBoxAdapter(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: NewsListingTablet(
                  itemSelectedCallback: (news) {
                    setState(() {
                      _selectedNews = news;
                    });
                  },
                ),
              ),
              Expanded(
                flex: 4,
                child: NewsDetails(
                  news: _selectedNews,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    var useMobileLayout = shortestSide < 600;
    if (useMobileLayout) {
      return _buildMobileLayout();
    }

    return Container(child: _buildTabletLayout());
  }
}
