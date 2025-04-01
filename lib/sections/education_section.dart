import 'package:bris_emeric/components/cards/card_education.dart';
import 'package:bris_emeric/components/layout/section_container.dart';
import 'package:bris_emeric/data/providers/resume_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EducationSection extends ConsumerWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final education = ref.watch(educationProvider);

    return SectionContainer(
      title: 'Education',
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: education.length,
        separatorBuilder: (context, index) => const SizedBox(height: 16),
        itemBuilder: (context, index) {
          return CardEducation(education: education[index]);
        },
      ),
    );
  }
}
