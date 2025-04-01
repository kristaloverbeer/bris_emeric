import 'package:bris_emeric/config/breakpoints.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ResponsiveContainer extends StatelessWidget {
  final Widget child;
  final double? maxWidth;
  final BoxDecoration? decoration;

  const ResponsiveContainer({super.key, required this.child, this.maxWidth, this.decoration});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: LayoutHelper.getHorizontalMargin(context)),
      decoration: decoration,
      child: child,
    );
  }
}

class LayoutHelper {
  static double getHorizontalMargin(BuildContext context) {
    final breakpoint = ResponsiveBreakpoints.of(context).breakpoint.name;
    return AppBreakpoints.getHorizontalMargin(breakpoint ?? MOBILE);
  }
}
