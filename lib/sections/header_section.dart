import 'package:bris_emeric/components/buttons/button_social_link.dart';
import 'package:bris_emeric/components/layout/section_container.dart';
import 'package:bris_emeric/data/providers/resume_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HeaderSection extends ConsumerWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(profileProvider);
    final theme = Theme.of(context);

    return SectionContainer(
      child: Row(
        children: [
          const CircleAvatar(radius: 80, backgroundImage: AssetImage('assets/images/profile.webp')),
          const SizedBox(width: 32),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(profile.name, style: theme.textTheme.displayLarge),
                const SizedBox(height: 4),
                Text(profile.title, style: theme.textTheme.labelLarge),
                const SizedBox(height: 8),
                Text(profile.summary, style: theme.textTheme.bodyLarge),
                const SizedBox(height: 8),
                const RowButtonsSocialLinks(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
