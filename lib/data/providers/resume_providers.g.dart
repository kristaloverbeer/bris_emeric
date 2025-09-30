// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resume_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(profile)
const profileProvider = ProfileProvider._();

final class ProfileProvider
    extends $FunctionalProvider<Profile, Profile, Profile>
    with $Provider<Profile> {
  const ProfileProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'profileProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$profileHash();

  @$internal
  @override
  $ProviderElement<Profile> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Profile create(Ref ref) {
    return profile(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Profile value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Profile>(value),
    );
  }
}

String _$profileHash() => r'45368bb290f005f61d99051d761c9d5ea8f26370';

@ProviderFor(skills)
const skillsProvider = SkillsProvider._();

final class SkillsProvider
    extends $FunctionalProvider<List<Skill>, List<Skill>, List<Skill>>
    with $Provider<List<Skill>> {
  const SkillsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'skillsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$skillsHash();

  @$internal
  @override
  $ProviderElement<List<Skill>> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  List<Skill> create(Ref ref) {
    return skills(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<Skill> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<Skill>>(value),
    );
  }
}

String _$skillsHash() => r'ad56867a1a2a9db042da2599c74e0aaf58da7cad';

@ProviderFor(experiences)
const experiencesProvider = ExperiencesProvider._();

final class ExperiencesProvider
    extends
        $FunctionalProvider<
          List<Experience>,
          List<Experience>,
          List<Experience>
        >
    with $Provider<List<Experience>> {
  const ExperiencesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'experiencesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$experiencesHash();

  @$internal
  @override
  $ProviderElement<List<Experience>> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  List<Experience> create(Ref ref) {
    return experiences(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<Experience> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<Experience>>(value),
    );
  }
}

String _$experiencesHash() => r'efc2f3d630976a707292e5b1a4a9d33b58d03f8c';

@ProviderFor(projects)
const projectsProvider = ProjectsProvider._();

final class ProjectsProvider
    extends $FunctionalProvider<List<Project>, List<Project>, List<Project>>
    with $Provider<List<Project>> {
  const ProjectsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'projectsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$projectsHash();

  @$internal
  @override
  $ProviderElement<List<Project>> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  List<Project> create(Ref ref) {
    return projects(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<Project> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<Project>>(value),
    );
  }
}

String _$projectsHash() => r'851b189c48b9d481f72bee5fe25551bbdb19500e';

@ProviderFor(education)
const educationProvider = EducationProvider._();

final class EducationProvider
    extends
        $FunctionalProvider<List<Education>, List<Education>, List<Education>>
    with $Provider<List<Education>> {
  const EducationProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'educationProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$educationHash();

  @$internal
  @override
  $ProviderElement<List<Education>> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  List<Education> create(Ref ref) {
    return education(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<Education> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<Education>>(value),
    );
  }
}

String _$educationHash() => r'f0bca6d81b341a256b0042dd831267fdc635d6e1';
