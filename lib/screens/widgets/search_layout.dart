import 'package:carry/core/core_files.dart';
import 'package:flutter/material.dart';

class SearchLayout extends StatelessWidget {
  const SearchLayout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultPadding(
      height: hh(context, 40),
      child: TextField(
        style: TextStyle(fontSize: hh(context, 12)),
        cursorColor: Clr.accent,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(
            Icons.search,
            color: Clr.black,
          ),
          filled: true,
          fillColor: Clr.white,
          hintText: "Search unique furniture ...",
          hintStyle: TextStyle(
            color: Clr.inactiveGrey,
            fontSize: hh(context, 10),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(ww(context, 5)),
            borderSide: BorderSide(
              width: 0,
              color: Colors.transparent,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(ww(context, 5)),
            borderSide: BorderSide(
              width: 0,
              color: Colors.transparent,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(ww(context, 5)),
            borderSide: BorderSide(
              width: 0,
              color: Colors.transparent,
            ),
          ),
        ),
      ),
    );
  }
}
