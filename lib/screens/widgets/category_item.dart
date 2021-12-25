import 'package:carry/core/core_files.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
    required this.item,
  }) : super(key: key);
  final CategoryIconModel item;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(ww(context, 5)),
      color: Clr.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(ww(context, 5)),
        onTap: () {
          final prov = Provider.of<BottomBarProvider>(context, listen: false);
          prov.changePage(1);
          pop(context);
        },
        child: Container(
          width: ww(context, 154),
          height: ww(context, 154),
          padding: EdgeInsets.all(ww(context, 20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: SvgPicture.asset(
                  item.icon,
                ),
              ),
              Text(
                item.title,
                style: TextStyle(
                  fontSize: hh(context, 9),
                  fontWeight: FontWeight.w600,
                  color: Clr.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
