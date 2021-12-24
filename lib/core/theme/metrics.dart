import 'package:flutter/material.dart';

double w(BuildContext context) => MediaQuery.of(context).size.width;
double h(BuildContext context) => MediaQuery.of(context).size.height;

double ww(BuildContext context, double x) {
  return (w(context) * x) / 375;
}

double hh(BuildContext context, double y) {
  return (h(context) * y) / 812;
}
