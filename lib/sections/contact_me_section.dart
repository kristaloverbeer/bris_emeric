import 'package:bris_emeric/components/cards/card_base.dart';
import 'package:bris_emeric/components/layout/section_container.dart';
import 'package:bris_emeric/data/providers/resume_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ContactMeSection extends ConsumerWidget {
  const ContactMeSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(profileProvider);
    final theme = Theme.of(context);

    return SectionContainer(
      title: 'Contact Me',
      sectionKey: 'contact',
      child: CardBase(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.call_outlined, size: 16),
                      const SizedBox(width: 8),
                      Text('Get in Touch', style: theme.textTheme.titleMedium),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Feel free to reach out if you'd like to discuss potential opportunities.",
                    style: theme.textTheme.labelMedium,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.email_outlined, size: 16),
                      const SizedBox(width: 8),
                      Text(profile.email, style: theme.textTheme.bodyMedium),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.location_on_outlined, size: 16),
                      const SizedBox(width: 8),
                      Text('Location', style: theme.textTheme.titleMedium),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(profile.location, style: theme.textTheme.labelMedium),
                  const SizedBox(height: 8),
                  Text('Currently closed to opportunities.', style: theme.textTheme.labelMedium),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
