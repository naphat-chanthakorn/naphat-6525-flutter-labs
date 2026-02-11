/// Profile Card Rating Responsive
///
/// The ProfileCardRatingResponsive is used for the interactivity profile
/// layout. It's responded for the layout. The difference from last
/// profile card is used InteractiveRatings widget for adjust the rating.
///
/// ============================================
/// AI DOCUMENTATION
/// No AI tools were used for this file.
/// All code written independently.
///
/// The ProfileCardRatingResponsive is reused from ContactImage, ContactInfo,
/// and Responsive utilities. It's responded for the layout on current
/// orientation. Use MediaQuery.of(context).orientation in Responsive to
/// detect orientation and build separate layouts for portrait and landscape.
/// Pass semantic colors from the theme to InteractiveRatings. Use primary for
/// activeColor and outlineVariant for inactiveColor.
/// ============================================
///
/// Author: Naphat Chanthakorn
/// Version: 1.0.0
/// Date: 2026-02-04
library;

import 'package:flutter/material.dart';
import '../components/interactive_ratings.dart';
import 'package:naphat_widgets_exercises/components/contact_image.dart';
import 'package:naphat_widgets_exercises/components/contact_info.dart';
import 'package:naphat_widgets_exercises/utils/responsive.dart';

class ProfileCardRatingResponsive extends StatelessWidget {
  const ProfileCardRatingResponsive({super.key});

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
              ),
            ],
          ),
        ),
      ],
    );
  }
}
