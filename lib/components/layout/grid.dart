import 'package:bris_emeric/config/breakpoints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Grid extends ConsumerWidget {
  final List<Widget> children;

  const Grid({super.key, required this.children});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;

    double getCardWidth() {
      final margin = AppBreakpoints.getHorizontalMargin(
        ResponsiveBreakpoints.of(context).breakpoint.name ?? MOBILE,
      );
      final availableWidth = screenWidth - (margin * 2);

      if (screenWidth > AppBreakpoints.desktop) {
        // 4 cards per row
        return (availableWidth - (16 * 3)) / 4;
      }
      if (screenWidth > AppBreakpoints.tablet) {
        // 3 cards per row
        return (availableWidth - (16 * 2)) / 3;
      }
      if (screenWidth > AppBreakpoints.mobile) {
        // 2 cards per row
        return (availableWidth - 16) / 2;
      }
      // 1 card per row
      return availableWidth;
    }

    return Align(
      alignment: Alignment.topLeft,
      child: Wrap(
        direction: Axis.horizontal,
        alignment: WrapAlignment.start,
        crossAxisAlignment: WrapCrossAlignment.start,
        spacing: 16,
        runSpacing: 16,
        children: children.map((child) => SizedBox(width: getCardWidth(), child: child)).toList(),
      ),
    );
  }
}
