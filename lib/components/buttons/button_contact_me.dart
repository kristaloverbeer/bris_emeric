import 'package:bris_emeric/data/models/toast_notification.dart';
import 'package:bris_emeric/data/providers/resume_providers.dart';
import 'package:bris_emeric/data/providers/toast_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonContactMe extends ConsumerStatefulWidget {
  const ButtonContactMe({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ButtonContactMeState();
}

class _ButtonContactMeState extends ConsumerState<ButtonContactMe> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final profile = ref.watch(profileProvider);

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: GestureDetector(
        onTap: () => _launchUrl(profile.email),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          height: 32,
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            border: Border.all(
              color:
                  isHovered
                      ? Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5)
                      : Colors.grey.withValues(alpha: 0.3),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(6),
            color:
                isHovered
                    ? Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.05)
                    : Colors.transparent,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.mail_outline_rounded,
                size: 16,
                color: Theme.of(context).colorScheme.onSurface,
              ),
              const SizedBox(width: 8),
              Text('Contact Me', style: Theme.of(context).textTheme.titleSmall),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _launchUrl(String email) async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: email,
      queryParameters: {'subject': 'Contact from your resume website'},
    );

    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri, mode: LaunchMode.platformDefault);
    } else {
      ref
          .read(toastNotifierProvider.notifier)
          .showToast(message: 'Could not open email client', type: ToastType.error);
    }
  }
}
