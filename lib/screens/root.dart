import 'package:carry/core/core_files.dart';
import 'package:carry/screens/screen_files.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Clr.bg,
      body: SafeArea(
        child: Consumer(builder: (context, BottomBarProvider prov, child) {
          return Stack(
            children: [
              pages[prov.page],
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  width: w(context),
                  height: hh(context, 64),
                  color: Clr.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: List.generate(bottomIcons.length, (index) {
                      var b = bottomIcons[index];
                      return BottomIconWidget(
                        item: b,
                        isActive: b.id == prov.page,
                        onTap: () {
                          prov.changePage(b.id);
                        },
                      );
                    }),
                  ),
                ),
              ),
              AnimatedPositioned(
                duration: Duration(milliseconds: 240),
                top: prov.isOpenFilter ? 0 : -500,
                left: 0,
                right: 0,
                child: FilterLayout(),
              ),
            ],
          );
        }),
      ),
    );
  }
}

List<Widget> pages = [
  Home(),
  Discover(),
  Coupon(),
  Cart(),
  Profile(),
];
