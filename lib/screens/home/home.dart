import 'package:carry/core/core_files.dart';
import 'package:carry/screens/screen_files.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: w(context),
      height: h(context),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: hh(context, 16),
            ),
            PageHeader(),
            SizedBox(
              height: hh(context, 24),
            ),
            SearchLayout(),
            SizedBox(
              height: hh(context, 12),
            ),
            ListHeader(
              title: "Furniture Shop",
              onTap: () => push(context, Categories()),
            ),
            CategoryLayout(),
            SizedBox(
              height: hh(context, 14),
            ),
            ListHeader(
              title: "Today's Promo",
            ),
            PromoLayout(),
            SizedBox(
              height: hh(context, 24),
            ),
            ListHeader(
              title: "Trending Furniture",
            ),
            TrendingLayout(
              items: trends.sublist(0, 3),
            ),
            SizedBox(
              height: hh(context, 24),
            ),
            ListHeader(
              title: "Trending Furniture",
            ),
            TrendingLayout(
              items: trends.sublist(3, trends.length),
            ),
            SizedBox(
              height: hh(context, 88),
            ),
          ],
        ),
      ),
    );
  }
}
