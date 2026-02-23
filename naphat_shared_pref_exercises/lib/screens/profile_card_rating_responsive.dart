/// Profile Card Rating Responsive
///
/// The ProfileCardRatingResponsive is used for the Profile Card Rating
/// Preferences layout. The layout adapts automatically based on the current
/// device orientation.
///
/// ============================================
/// AI DOCUMENTATION
/// No AI tools were used for this file.
/// All code written independently.
///
/// The ProfileCardRatingResponsive is reused the ContactImage, ContactInfo,
/// and Responsive utilities from the widgets_exercises package. It's responded
/// for the layout on current orientation for portrait and landscape.
/// Use primary for activeColor and outlineVariant for inactiveColor.
/// Use SharedPreferencesWithCache to coordinate persistent rating state
/// across app sessions.
/// ============================================
///
/// Author: Naphat Chanthakorn
/// Version: 1.0.0
/// Date: 2026-02-23
library;

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../components/interactive_ratings.dart';
import 'package:naphat_widgets_exercises/components/contact_image.dart';
import 'package:naphat_widgets_exercises/components/contact_info.dart';
import 'package:naphat_widgets_exercises/utils/responsive.dart';

class ProfileCardRatingResponsive extends StatelessWidget {
  final SharedPreferencesWithCache prefs;
  const ProfileCardRatingResponsive({super.key, required this.prefs});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Responsive.getScreenPadding(context),
      child: Responsive.isPortrait(context)
          ? _buildPortraitLayout(context)
          : _buildLandscapeLayout(context),
    );
  }

  Widget _buildPortraitLayout(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const ContactImage(imagePath: 'assets/images/sylus.jpg', name: 'Sylus'),
        const ContactInfo(
          addressName: 'Hidden Base',
          addressInfo: 'Onychinus, Deepspace, N109',
          email: 'abysm.sovereign@loveanddeep.com',
          phone: '478-109-190',
        ),
        InteractiveRatings(
          activeColor: Theme.of(context).colorScheme.primary,
          inactiveColor: Theme.of(context).colorScheme.outlineVariant,
          prefs: prefs,
        ),
      ],
    );
  }

  Widget _buildLandscapeLayout(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Expanded(
          flex: 2,
          child: Center(
            child: ContactImage(
              imagePath: 'assets/images/sylus.jpg',
              name: 'Sylus',
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const ContactInfo(
                addressName: 'Hidden Base',
                addressInfo: 'Onychinus, Deepspace, N109',
                email: 'abysm.sovereign@loveanddeep.com',
                phone: '478-109-190',
              ),
              InteractiveRatings(
                activeColor: Theme.of(context).colorScheme.primary,
                inactiveColor: Theme.of(context).colorScheme.outlineVariant,
                prefs: prefs,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
