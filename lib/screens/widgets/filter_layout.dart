import 'package:carry/core/core_files.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class FilterLayout extends StatelessWidget {
  const FilterLayout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w(context),
      decoration: BoxDecoration(
        color: Clr.white,
        boxShadow: [
          BoxShadow(
            color: Clr.lightGrey,
            offset: Offset(0, 5),
            blurRadius: 10,
          ),
        ],
      ),
      padding: EdgeInsets.all(ww(context, 24)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                  onTap: () {
                    final prov =
                        Provider.of<BottomBarProvider>(context, listen: false);
                    prov.toggleFilter();
                  },
                  child: Icon(Icons.close)),
              Text(
                "Filter",
                style: TextStyle(
                  color: Clr.black,
                  fontWeight: FontWeight.w800,
                  fontSize: hh(context, 16),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  "Reset",
                  style: TextStyle(
                    color: Clr.accent,
                    fontWeight: FontWeight.w800,
                    fontSize: hh(context, 16),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: hh(context, 24),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Price Range",
                style: TextStyle(
                  color: Clr.black,
                  fontWeight: FontWeight.w800,
                  fontSize: hh(context, 14),
                ),
              ),
              SizedBox(
                height: hh(context, 10),
              ),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: hh(context, 40),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                            left: ww(context, 10),
                          ),
                          hintText: "Minimum",
                          hintStyle: TextStyle(
                            fontSize: hh(context, 9),
                            fontWeight: FontWeight.w600,
                            color: Clr.inactiveGrey,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              ww(context, 5),
                            ),
                            borderSide: BorderSide(
                              color: Clr.inactiveGrey,
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: ww(context, 16),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: hh(context, 40),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                            left: ww(context, 10),
                          ),
                          hintText: "Maximum",
                          hintStyle: TextStyle(
                            fontSize: hh(context, 9),
                            fontWeight: FontWeight.w600,
                            color: Clr.inactiveGrey,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              ww(context, 5),
                            ),
                            borderSide: BorderSide(
                              color: Clr.inactiveGrey,
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: hh(context, 24),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Item Filter",
                style: TextStyle(
                  color: Clr.black,
                  fontWeight: FontWeight.w800,
                  fontSize: hh(context, 14),
                ),
              ),
              SizedBox(
                height: hh(context, 10),
              ),
              SizedBox(
                height: hh(context, 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/Tag.svg",
                          color: Clr.inactiveGrey,
                        ),
                        SizedBox(
                          width: ww(context, 10),
                        ),
                        Text(
                          "Discount",
                          style: TextStyle(
                            color: Clr.black,
                            fontWeight: FontWeight.w600,
                            fontSize: hh(context, 10),
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.check,
                      color: Clr.accent,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: hh(context, 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/Carry.svg",
                          color: Clr.inactiveGrey,
                        ),
                        SizedBox(
                          width: ww(context, 10),
                        ),
                        Text(
                          "Free Shipping",
                          style: TextStyle(
                            color: Clr.black,
                            fontWeight: FontWeight.w600,
                            fontSize: hh(context, 10),
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.check,
                      color: Clr.accent,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: hh(context, 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/Plan.svg",
                          color: Clr.inactiveGrey,
                        ),
                        SizedBox(
                          width: ww(context, 10),
                        ),
                        Text(
                          "Installment Plan",
                          style: TextStyle(
                            color: Clr.black,
                            fontWeight: FontWeight.w600,
                            fontSize: hh(context, 10),
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.check,
                      color: Clr.accent,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: hh(context, 24),
          ),
          CustomButton(
            width: double.maxFinite,
            title: Center(
              child: Text(
                "APPLY FILTER",
                style: TextStyle(
                  fontSize: hh(context, 14),
                  fontWeight: FontWeight.w800,
                  color: Clr.white,
                ),
              ),
            ),
            onTap: () {
              final prov =
                  Provider.of<BottomBarProvider>(context, listen: false);
              prov.toggleFilter();
            },
          ),
        ],
      ),
    );
  }
}
