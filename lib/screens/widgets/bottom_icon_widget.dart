import 'package:carry/core/core_files.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomIconWidget extends StatelessWidget {
  const BottomIconWidget({
    Key? key,
    required this.item,
    required this.isActive,
    this.onTap,
  }) : super(key: key);
  final BottomIconModel item;
  final bool isActive;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(ww(context, 5)),
      color: isActive ? Clr.accent : Clr.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(ww(context, 5)),
        onTap: onTap,
        child: SizedBox(
          width: ww(context, 42),
          height: ww(context, 42),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                item.icon,
                color: isActive ? Clr.white : Clr.black,
                width: hh(context, 18),
              ),
              if (isActive)
                Text(
                  item.title,
                  style: TextStyle(
                    color: isActive ? Clr.white : Clr.black,
                    fontSize: hh(context, 8),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
