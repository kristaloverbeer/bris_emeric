import 'package:bris_emeric/data/models/education.dart';
import 'package:bris_emeric/data/models/experience.dart';
import 'package:bris_emeric/data/models/profile.dart';
import 'package:bris_emeric/data/models/project.dart';
import 'package:bris_emeric/data/models/skill.dart';
import 'package:bris_emeric/data/sources/resume_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'resume_providers.g.dart';

@riverpod
Profile profile(Ref ref) {
  return ResumeData.personalInfo;
}

@riverpod
List<Skill> skills(Ref ref) {
  return ResumeData.skills;
}

@riverpod
List<Experience> experiences(Ref ref) {
  return ResumeData.experiences;
}

@riverpod
List<Project> projects(Ref ref) {
  return ResumeData.projects;
}

@riverpod
List<Education> education(Ref ref) {
  return ResumeData.education;
}
