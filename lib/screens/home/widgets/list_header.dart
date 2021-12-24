import 'package:carry/core/core_files.dart';
import 'package:flutter/material.dart';

class ListHeader extends StatelessWidget {
  const ListHeader({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return DefaultPadding(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Clr.black,
              fontSize: hh(context, 13),
              fontWeight: FontWeight.w800,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Text(
                  "View all",
                  style: TextStyle(
                    color: Clr.accent,
                    fontSize: hh(context, 12),
                  ),
                ),
                SizedBox(width: ww(context, 12)),
                Icon(
                  Icons.arrow_forward,
                  color: Clr.accent,
                  size: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
