import 'package:bris_emeric/components/cards/card_base.dart';
import 'package:bris_emeric/data/models/experience.dart';
import 'package:flutter/material.dart';

class CardExperience extends StatelessWidget {
  final Experience experience;

  const CardExperience({super.key, required this.experience});

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
              Text(experience.position, style: theme.textTheme.titleLarge),
              Text(experience.period, style: theme.textTheme.labelMedium),
            ],
          ),
          const SizedBox(height: 4),
          Text(experience.company, style: theme.textTheme.titleMedium),
          Text(experience.location, style: theme.textTheme.bodySmall),
          const SizedBox(height: 8),
          ...experience.responsibilities.map(
            (responsibility) => Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• ', style: theme.textTheme.labelMedium),
                Expanded(child: Text(responsibility, style: theme.textTheme.labelMedium)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
