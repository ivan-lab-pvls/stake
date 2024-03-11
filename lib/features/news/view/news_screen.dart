import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stake_lounge/const.dart';
import 'package:stake_lounge/features/news/view/news_master_container.dart';

@RoutePage()
class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: scaffoldColor,
        child: SafeArea(
          child: Container(
            color: Colors.white,
            child: const NewsMasterContainer(),
          ),
        ),
      ),
    );
  }
}
