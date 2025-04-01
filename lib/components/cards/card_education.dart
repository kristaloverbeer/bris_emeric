import 'package:bris_emeric/components/cards/card_base.dart';
import 'package:bris_emeric/data/models/education.dart';
import 'package:flutter/material.dart';

class CardEducation extends StatelessWidget {
  final Education education;

  const CardEducation({super.key, required this.education});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return CardBase(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: Text(education.degree, style: theme.textTheme.titleLarge)),
              Text(education.period, style: theme.textTheme.labelSmall),
            ],
          ),
          const SizedBox(height: 4),
          Text(education.institution, style: theme.textTheme.titleSmall),
          Text(education.location, style: theme.textTheme.bodySmall),
          const SizedBox(height: 8),
          ...education.achievements.map(
            (achievement) => Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('• ', style: theme.textTheme.labelMedium),
                  Expanded(child: Text(achievement, style: theme.textTheme.labelMedium)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
