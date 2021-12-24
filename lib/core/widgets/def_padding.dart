import 'package:carry/core/theme/metrics.dart';
import 'package:flutter/material.dart';

class DefaultPadding extends StatelessWidget {
  const DefaultPadding({
    Key? key,
    required this.child,
    this.height,
  }) : super(key: key);
  final Widget child;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: ww(context, 24)),
      width: w(context),
      height: height,
      child: child,
    );
  }
}
