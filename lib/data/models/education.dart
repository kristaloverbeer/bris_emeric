class Education {
  final String institution;
  final String degree;
  final String period;
  final String location;
  final List<String> achievements;

  const Education({
    required this.institution,
    required this.degree,
    required this.period,
    required this.location,
    this.achievements = const [],
  });
}
