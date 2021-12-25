import 'package:carry/core/core_files.dart';
import 'package:carry/screens/screen_files.dart';
import 'package:flutter/material.dart';

class CategoryLayout extends StatelessWidget {
  const CategoryLayout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: w(context),
      height: hh(context, 132),
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        padding:
            EdgeInsets.only(left: ww(context, 24), bottom: hh(context, 10)),
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          var c = categoryIcons[index];
          return Padding(
            padding: EdgeInsets.only(right: ww(context, 16)),
            child: CategoryIcon(
              icon: c,
              isActive: index == 0,
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}
