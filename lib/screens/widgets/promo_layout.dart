import 'package:carry/core/core_files.dart';
import 'package:carry/screens/screen_files.dart';
import 'package:flutter/material.dart';

class PromoLayout extends StatelessWidget {
  const PromoLayout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: w(context),
      height: hh(context, 120),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.only(left: ww(context, 24)),
        itemCount: promos.length,
        itemBuilder: (context, index) {
          PromoModel p = promos[index];
          return Padding(
            padding: EdgeInsets.only(right: ww(context, 16)),
            child: PromoWidget(item: p),
          );
        },
      ),
    );
  }
}
