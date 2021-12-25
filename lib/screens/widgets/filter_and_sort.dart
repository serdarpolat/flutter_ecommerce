import 'package:carry/core/core_files.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class FilterAndSort extends StatelessWidget {
  const FilterAndSort({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultPadding(
      child: Row(
        children: [
          Expanded(
            child: Material(
              color: Clr.white,
              borderRadius: BorderRadius.circular(ww(context, 5)),
              child: InkWell(
                onTap: () {
                  final prov =
                      Provider.of<BottomBarProvider>(context, listen: false);
                  prov.toggleFilter();
                },
                borderRadius: BorderRadius.circular(ww(context, 5)),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: ww(context, 19),
                    vertical: hh(context, 10),
                  ),
                  height: hh(context, 44),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
    );
  }
}
