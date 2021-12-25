import 'package:carry/core/core_files.dart';
import 'package:flutter/material.dart';

class TrendingLayout extends StatelessWidget {
  const TrendingLayout({
    Key? key,
    required this.items,
  }) : super(key: key);
  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: w(context),
      height: hh(context, 108),
      child: ListView.builder(
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.only(left: ww(context, 24)),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: ww(context, 16)),
            child: Container(
              width: ww(context, 203),
              height: hh(context, 108),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(ww(context, 5)),
                image: DecorationImage(
                    image: AssetImage(items[index]), fit: BoxFit.cover),
              ),
            ),
          );
        },
      ),
    );
  }
}

List<String> trends = [
  "assets/images/Trend1.jpg",
  "assets/images/Trend2.jpg",
  "assets/images/Trend3.jpg",
  "assets/images/Trend4.jpg",
  "assets/images/Trend5.jpg",
  "assets/images/Trend6.jpg",
];
