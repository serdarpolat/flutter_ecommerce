import 'package:carry/core/core_files.dart';
import 'package:flutter/material.dart';

class PromoWidget extends StatelessWidget {
  const PromoWidget({
    Key? key,
    required this.item,
  }) : super(key: key);
  final PromoModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ww(context, 206),
      height: hh(context, 120),
      padding: EdgeInsets.all(ww(context, 10)),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  item.title,
                  style: TextStyle(
                    color: Clr.black,
                    fontSize: hh(context, 10),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  item.discount + "%OFF",
                  style: TextStyle(
                    color: Clr.black,
                    fontSize: hh(context, 16),
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Container(
                  height: hh(context, 16),
                  width: double.maxFinite,
                  child: Center(
                    child: Text(
                      item.date,
                      style: TextStyle(
                        color: Clr.white,
                        fontSize: hh(context, 8),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Clr.grey,
                    borderRadius: BorderRadius.circular(ww(context, 2)),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Align(
                alignment: Alignment.centerRight, child: Image.asset(item.img)),
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Clr.white,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
