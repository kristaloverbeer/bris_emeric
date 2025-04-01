import 'package:bris_emeric/components/layout/responsive_container.dart';
import 'package:bris_emeric/components/navigation/custom_app_bar.dart';
import 'package:bris_emeric/sections/about_section.dart';
import 'package:bris_emeric/sections/contact_me_section.dart';
import 'package:bris_emeric/sections/education_section.dart';
import 'package:bris_emeric/sections/experience_section.dart';
import 'package:bris_emeric/sections/footer_section.dart';
import 'package:bris_emeric/sections/header_section.dart';
import 'package:bris_emeric/sections/projects_section.dart';
import 'package:bris_emeric/sections/skills_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: const ResponsiveContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderSection(),
              AboutSection(),
              ExperienceSection(),
              EducationSection(),
              SkillsSection(),
              ProjectsSection(),
              ContactMeSection(),
              FooterSection(),
            ],
          ),
        ),
      ),
    );
  }
}
