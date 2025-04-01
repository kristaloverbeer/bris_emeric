import 'package:flutter/material.dart';

class SectionContainer extends StatelessWidget {
  final Widget child;
  final String? title;
  final String? sectionKey;

  const SectionContainer({super.key, required this.child, this.title, this.sectionKey});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      key: sectionKey != null ? Key(sectionKey!) : null,
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null) ...[
            Text(title!, style: theme.textTheme.displayMedium),
            const SizedBox(height: 16),
          ],
          child,
        ],
      ),
    );
  }
}
