import 'package:bris_emeric/data/models/toast_notification.dart';
import 'package:bris_emeric/data/providers/resume_providers.dart';
import 'package:bris_emeric/data/providers/toast_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonSocialLink extends ConsumerWidget {
  final String name;
  final String url;
  final IconData? icon;
  final String? svg;
  final double size;

  const ButtonSocialLink({
    super.key,
    required this.name,
    required this.url,
    this.icon,
    this.svg,
    this.size = 20,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Widget iconWidget =
        svg != null
            ? SvgPicture.asset(svg!, width: size, height: size, alignment: Alignment.bottomCenter)
            : Icon(icon, size: size);

    return Tooltip(
      message: name,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () => _launchUrl(ref),
          child: Container(
            width: size * 1.2,
            height: size * 1.2,
            alignment: Alignment.center,
            child: iconWidget,
          ),
        ),
      ),
    );
  }

  Future<void> _launchUrl(WidgetRef ref) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.platformDefault);
    } else {
      ref
          .read(toastProvider.notifier)
          .showToast(message: 'Could not open $name link', type: ToastType.error);
    }
  }
}

class RowButtonsSocialLinks extends ConsumerWidget {
  final double spacing;

  const RowButtonsSocialLinks({super.key, this.spacing = 16});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(profileProvider);
    return Row(
      children: [
        ButtonSocialLink(
          name: 'GitHub',
          url: profile.socialLinks['GitHub']!,
          svg: 'assets/icons/github.svg',
          size: 17,
        ),
        SizedBox(width: spacing),
        ButtonSocialLink(
          name: 'LinkedIn',
          url: profile.socialLinks['LinkedIn']!,
          svg: 'assets/icons/linkedin.svg',
          size: 17,
        ),
        SizedBox(width: spacing),
        ButtonSocialLink(
          name: 'Email',
          url: 'mailto:${profile.email}',
          icon: Icons.email_outlined,
          size: 18,
        ),
      ],
    );
  }
}
