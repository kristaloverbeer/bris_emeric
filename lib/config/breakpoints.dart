import 'package:responsive_framework/responsive_framework.dart';

class AppBreakpoints {
  static const double mobile = 600;
  static const double tablet = 1024;
  static const double desktop = 1440;

  static List<Breakpoint> get breakpoints => [
    const Breakpoint(start: 0, end: mobile, name: MOBILE),
    const Breakpoint(start: mobile + 1, end: tablet, name: TABLET),
    const Breakpoint(start: tablet + 1, end: desktop, name: DESKTOP),
    const Breakpoint(start: desktop + 1, end: double.infinity, name: '4K'),
  ];

  static double getHorizontalMargin(String breakpoint) {
    switch (breakpoint) {
      case MOBILE:
        return 16.0;
      case TABLET:
        return 16.0;
      case DESKTOP:
        return 128.0;
      case '4K':
        return 256.0;
      default:
        return 16.0;
    }
  }
}
