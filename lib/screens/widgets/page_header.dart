import 'package:carry/core/core_files.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageHeader extends StatelessWidget {
  const PageHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultPadding(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Furniture Shop",
                style: TextStyle(
                  color: Clr.black,
                  fontSize: hh(context, 16),
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                "Get unique furniture from home",
                style: TextStyle(
                  color: Clr.inactiveGrey,
                  fontSize: hh(context, 8),
                ),
              ),
            ],
          ),
          InkWell(
            onTap: () {},
            child: SvgPicture.asset(
              "assets/icons/ShoppingCart.svg",
              width: ww(context, 22),
            ),
          ),
        ],
      ),
    );
  }
}
