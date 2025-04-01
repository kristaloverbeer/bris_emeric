import 'package:flutter/material.dart';

class CardBase extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final Color? backgroundColor;

  const CardBase({super.key, required this.child, this.padding, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      child: Container(
        padding: padding ?? const EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[300]!, width: 0.8),
          borderRadius: BorderRadius.circular(8),
          color: backgroundColor ?? Theme.of(context).scaffoldBackgroundColor,
        ),
        child: child,
      ),
    );
  }
}
