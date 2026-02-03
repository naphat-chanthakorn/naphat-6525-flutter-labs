/// News Responsive
///
/// This widget provides responsive utilities used by the news feed screen.
/// supporting mobile, tablet, and desktop layouts.
///
/// ============================================
/// AI DOCUMENTATION
/// No AI tools were used for this file.
/// All code written independently.
///
/// The Responsive class defines a responsive news feed that adapts to
/// different screen sizes in mobile, tablet, and desktop devices.
/// This class is define static breakpoint constants for tablet (600) and
/// desktop (900). The isMobile, isTablet, and isDesktop methods are used
/// to determine the current screen size based on the width while
/// getColumnCount method is used to calculate the number of columns for
/// the grid.
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
