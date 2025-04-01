import 'package:bris_emeric/components/cards/card_base.dart';
import 'package:bris_emeric/data/models/skill.dart';
import 'package:flutter/material.dart';

class CardSkill extends StatelessWidget {
  final Skill skill;

  const CardSkill({super.key, required this.skill});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return CardBase(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(skill.title, style: textTheme.titleMedium),
          const SizedBox(height: 12),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: skill.skills.map((skill) => SkillChip(label: skill)).toList(),
          ),
        ],
      ),
    );
  }
}

class SkillChip extends StatelessWidget {
  final String label;
  final Color? backgroundColor;
  final Color? textColor;

  const SkillChip({super.key, required this.label, this.backgroundColor, this.textColor});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Chip(
      label: Text(label, style: theme.textTheme.bodyMedium),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      side: const BorderSide(color: Colors.transparent),
      backgroundColor: backgroundColor ?? Colors.grey[200],
      labelStyle: TextStyle(color: textColor ?? theme.colorScheme.onPrimaryContainer),
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
    );
  }
}
