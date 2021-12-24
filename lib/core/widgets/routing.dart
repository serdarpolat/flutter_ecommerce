import 'package:flutter/material.dart';

Future<dynamic> push(BuildContext context, Widget page) {
  return Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}
