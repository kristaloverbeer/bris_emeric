import 'package:bris_emeric/components/notifications/toast_display.dart';
import 'package:bris_emeric/config/breakpoints.dart';
import 'package:bris_emeric/config/theme.dart';
import 'package:bris_emeric/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Emeric BRIS',
      builder: (context, child) {
        child = ResponsiveBreakpoints.builder(
          child: child!,
          breakpoints: AppBreakpoints.breakpoints,
        );
        return ToastDisplay(child: child);
      },
      scrollBehavior: const MaterialScrollBehavior().copyWith(scrollbars: false),
      debugShowCheckedModeBanner: false,
      theme: ref.watch(themeProvider(context)),
      darkTheme: ref.watch(darkThemeProvider(context)),
      themeMode: ThemeMode.light,
      home: const HomePage(),
    );
  }
}
