class Experience {
  final String company;
  final String position;
  final String period;
  final String location;
  final List<String> responsibilities;
  final List<String> technologies;

  const Experience({
    required this.company,
    required this.position,
    required this.period,
    required this.location,
    this.responsibilities = const [],
    this.technologies = const [],
  });
}
