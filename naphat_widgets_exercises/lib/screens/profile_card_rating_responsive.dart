/// Profile Card Rating Responsive
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
/// Date: 2026-02-04
library;

import 'package:flutter/material.dart';
import '../components/interactive_ratings.dart';
import '../components/contact_image.dart';
import '../components/contact_info.dart';
import '../utils/responsive.dart';

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
