class Profile {
  final String name;
  final String title;
  final String location;
  final String email;
  final String about;
  final String summary;
  final Map<String, String> socialLinks;

  const Profile({
    required this.name,
    required this.title,
    required this.location,
    required this.email,
    required this.about,
    required this.summary,
    this.socialLinks = const {},
  });
}
