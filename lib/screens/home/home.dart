import 'package:carry/core/core_files.dart';
import 'package:carry/screens/screen_files.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Clr.bg,
      body: SizedBox(
        width: w(context),
        height: h(context),
        child: Column(
          children: [
            SizedBox(
              height: hh(context, 44),
            ),
            PageHeader(),
            SizedBox(
              height: hh(context, 24),
            ),
            SearchLayout(),
            SizedBox(
              height: hh(context, 30),
            ),
            ListHeader(
              title: "Furniture Shop",
            ),
            CategoryLayout(),
            SizedBox(
              height: hh(context, 10),
            ),
            ListHeader(
              title: "Today's Promo",
            ),
          ],
        ),
      ),
    );
  }
}
