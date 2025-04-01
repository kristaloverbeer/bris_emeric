import 'package:bris_emeric/components/cards/card_skill.dart';
import 'package:bris_emeric/components/layout/grid.dart';
import 'package:bris_emeric/components/layout/section_container.dart';
import 'package:bris_emeric/data/providers/resume_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SkillsSection extends ConsumerWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final skills = ref.watch(skillsProvider);
    return SectionContainer(
      title: 'Skills',
      sectionKey: 'skills',
      child: Grid(children: skills.map((skill) => CardSkill(skill: skill)).toList()),
    );
  }
}
