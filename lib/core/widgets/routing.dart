import 'package:flutter/material.dart';

Future<dynamic> push(BuildContext context, Widget page) {
  return Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}

Future<dynamic> pushReplace(BuildContext context, Widget page) {
  return Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => page));
}

void pop(BuildContext context) {
  return Navigator.pop(context);
}
