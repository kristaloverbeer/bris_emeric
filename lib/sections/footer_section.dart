import 'package:bris_emeric/components/buttons/button_social_link.dart';
import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: EdgeInsets.zero,
      elevation: 0,
      child: Container(
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Colors.grey[300]!, width: 1)),
        ),
        child: const Row(
          children: [
            Text('© 2025 Emeric Bris. All rights reserved.'),
            Spacer(),
            RowButtonsSocialLinks(),
          ],
        ),
      ),
    );
  }
}
