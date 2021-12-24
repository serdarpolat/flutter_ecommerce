import 'package:carry/core/core_files.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryIcon extends StatelessWidget {
  const CategoryIcon({
    Key? key,
    required this.icon,
    required this.isActive,
    this.onTap,
  }) : super(key: key);
  final CategoryIconModel icon;
  final bool isActive;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: ww(context, 115),
        height: hh(context, 122),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: hh(context, 70),
              child: SvgPicture.asset(
                icon.icon,
              ),
            ),
            Text(
              icon.title,
              style: TextStyle(
                fontSize: hh(context, 9),
                fontWeight: FontWeight.w600,
                color: Clr.black,
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
          color: Clr.white,
          borderRadius: BorderRadius.circular(ww(context, 5)),
          boxShadow: isActive
              ? [
                  BoxShadow(
                    color: Clr.black.withOpacity(0.05),
                    offset: Offset(0, hh(context, 5)),
                    blurRadius: 10,
                  ),
                ]
              : [],
        ),
      ),
    );
  }
}
