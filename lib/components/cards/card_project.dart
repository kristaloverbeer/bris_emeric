import 'package:bris_emeric/data/models/project.dart';
import 'package:bris_emeric/data/models/toast_notification.dart';
import 'package:bris_emeric/data/providers/toast_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

class CardProject extends ConsumerWidget {
  final Project project;

  const CardProject({super.key, required this.project});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (project.imageUrl != null)
            Image.asset(project.imageUrl!, height: 200, width: double.infinity, fit: BoxFit.cover),
          const SizedBox(height: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(project.title, style: theme.textTheme.titleLarge),
                  Row(
                    children: [
                      if (project.projectUrl != null)
                        IconButton(
                          icon: const Icon(Icons.play_circle_outline_outlined),
                          onPressed: () => _launchUrl(ref, project.projectUrl!),
                          tooltip: 'Visit Project',
                        ),
                      if (project.githubUrl != null)
                        IconButton(
                          icon: const Icon(Icons.code),
                          onPressed: () => _launchUrl(ref, project.githubUrl!),
                          tooltip: 'View Source',
                        ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(project.description, style: theme.textTheme.bodyMedium),
              const SizedBox(height: 16),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children:
                    project.technologies
                        .map(
                          (tech) => Chip(
                            label: Text(tech),
                            labelStyle: TextStyle(color: theme.colorScheme.onSecondaryContainer),
                          ),
                        )
                        .toList(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> _launchUrl(WidgetRef ref, String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.platformDefault);
    } else {
      ref
          .read(toastProvider.notifier)
          .showToast(message: 'Could not open link', type: ToastType.error);
    }
  }
}
