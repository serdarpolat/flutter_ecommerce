import 'package:carry/core/core_files.dart';
import 'package:carry/screens/screen_files.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Discover extends StatelessWidget {
  const Discover({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Clr.bg,
      appBar: AppBar(
        backgroundColor: Clr.bg,
        elevation: 0,
        centerTitle: false,
        actions: [
          MaterialButton(
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
            child: SvgPicture.asset("assets/icons/ShoppingCart.svg"),
          )
        ],
        title: Text(
          "Living Room",
          style: TextStyle(
            color: Clr.black,
            fontSize: hh(context, 16),
          ),
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          width: w(context),
          height: h(context),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(
                  height: hh(context, 10),
                ),
                SearchLayout(),
                SizedBox(
                  height: hh(context, 20),
                ),
                DefaultPadding(
                  child: Row(
                    children: [
                      Expanded(
                        child: Material(
                          color: Clr.white,
                          borderRadius: BorderRadius.circular(ww(context, 5)),
                          child: InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(ww(context, 5)),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: ww(context, 19),
                                vertical: hh(context, 10),
                              ),
                              height: hh(context, 44),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SvgPicture.asset(
                                    "assets/icons/Filter.svg",
                                    color: Clr.accent,
                                  ),
                                  Text(
                                    "Filter",
                                    style: TextStyle(
                                      color: Clr.accent,
                                      fontSize: hh(context, 16),
                                      fontWeight: FontWeight.w300,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: ww(context, 14),
                      ),
                      Expanded(
                        child: Material(
                          color: Clr.white,
                          borderRadius: BorderRadius.circular(ww(context, 5)),
                          child: InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(ww(context, 5)),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: ww(context, 19),
                                vertical: hh(context, 10),
                              ),
                              height: hh(context, 44),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SvgPicture.asset(
                                    "assets/icons/Filter.svg",
                                    color: Clr.black,
                                  ),
                                  Text(
                                    "Sort",
                                    style: TextStyle(
                                      color: Clr.black,
                                      fontSize: hh(context, 16),
                                      fontWeight: FontWeight.w300,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: ww(context, 14),
                      ),
                      Expanded(
                        child: Material(
                          color: Clr.white,
                          borderRadius: BorderRadius.circular(ww(context, 5)),
                          child: InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(ww(context, 5)),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: ww(context, 19),
                                vertical: hh(context, 10),
                              ),
                              height: hh(context, 44),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SvgPicture.asset(
                                    "assets/icons/Filter.svg",
                                    color: Clr.black,
                                  ),
                                  Text(
                                    "List",
                                    style: TextStyle(
                                      color: Clr.black,
                                      fontSize: hh(context, 16),
                                      fontWeight: FontWeight.w300,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: ww(context, 20),
                ),
                GridView.builder(
                  shrinkWrap: true,
                  itemCount: products.length,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: ww(context, 24)),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    childAspectRatio: 156 / 224,
                    crossAxisSpacing: 20,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    var p = products[index];

                    return ProductItem(
                      item: p,
                    );
                  },
                ),
                SizedBox(
                  height: hh(context, 88),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
