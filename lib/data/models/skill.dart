class Skill {
  final String title;
  final List<String> skills;

  const Skill({
    required this.title,
    required this.skills,
  });

  Skill copyWith({
    String? title,
    List<String>? skills,
  }) {
    return Skill(
      title: title ?? this.title,
      skills: skills ?? this.skills,
    );
  }

  @override
  String toString() {
    return 'Skill(title: $title, skills: $skills)';
  }
}