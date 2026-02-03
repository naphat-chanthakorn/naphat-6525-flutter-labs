/// News Responsive
///
/// This widget displays
///
/// ============================================
/// AI DOCUMENTATION
/// No AI tools were used for this file.
/// All code written independently.
///
/// ============================================
///
/// Author: Naphat Chanthakorn
/// Version: 1.0.0
/// Date: 2026-02-02
library;

class Responsive {
  static const double tabletBreakpoint = 600;
  static const double desktopBreakpoint = 900;

  static bool isMobile(double width) => width <= tabletBreakpoint;

  static bool isTablet(double width) =>
      width > tabletBreakpoint && width < desktopBreakpoint;

  static bool isDesktop(double width) => width >= desktopBreakpoint;

  static int getColumnCount(double width) {
    if (isDesktop(width)) return 3;
    if (isTablet(width)) return 2;
    return 1;
  }
}
