import 'package:bris_emeric/components/cards/card_project.dart';
import 'package:bris_emeric/components/layout/grid.dart';
import 'package:bris_emeric/components/layout/section_container.dart';
import 'package:bris_emeric/data/providers/resume_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProjectsSection extends ConsumerWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final projects = ref.watch(projectsProvider);
    return SectionContainer(
      title: 'Projects',
      sectionKey: 'projects',
      child: Grid(children: projects.map((project) => CardProject(project: project)).toList()),
    );
  }
}
