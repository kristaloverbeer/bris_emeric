import 'package:bris_emeric/components/buttons/button_contact_me.dart';
import 'package:bris_emeric/components/layout/responsive_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ThemeData theme = Theme.of(context);

    return ResponsiveContainer(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey[300]!, width: 1)),
      ),
      child: AppBar(
        backgroundColor: theme.scaffoldBackgroundColor,
        foregroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: false,
        toolbarHeight: kToolbarHeight,
        title: Text('Emeric BRIS', style: theme.textTheme.titleLarge),
        actions: [
          // _NavButton(label: 'Blog', isActive: false, onPressed: () => {}),
          // const SizedBox(width: 8),
          const ButtonContactMe(),
        ],
      ),
    );
  }
}

// class _NavButton extends StatelessWidget {
//   final String label;
//   final bool isActive;
//   final VoidCallback onPressed;

//   const _NavButton({required this.label, required this.isActive, required this.onPressed});

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);

//     return TextButton(
//       onPressed: onPressed,
//       style: TextButton.styleFrom(
//         foregroundColor: isActive ? theme.colorScheme.primary : theme.colorScheme.onSurface,
//         shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(4))),
//       ),
//       child: Text(label, style: theme.textTheme.titleSmall),
//     );
//   }
// }
