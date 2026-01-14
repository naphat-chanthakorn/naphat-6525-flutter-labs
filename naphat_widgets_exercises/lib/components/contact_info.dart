/// Contact Info
///
/// This widget displays a
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
/// Date: 2026-01-14
library;

import 'package:flutter/material.dart';

class ContactInfo extends StatelessWidget {
  final String addressName;
  final String addressInfo;
  final String email;
  final String phone;

  const ContactInfo({
    super.key,
    required this.addressName,
    required this.addressInfo,
    required this.email,
    required this.phone,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Icon(
                Icons.location_on,
                color: Theme.of(context).colorScheme.primary,
              ),
              title: Text(
                addressName,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: Text(addressInfo),
            ),
            const Divider(),
            ListTile(
              leading: Icon(
                Icons.phone,
                color: Theme.of(context).colorScheme.primary,
              ),
              title: Text(phone, style: TextStyle(fontWeight: FontWeight.w500)),
            ),
            const Divider(),
            ListTile(
              leading: Icon(
                Icons.mail,
                color: Theme.of(context).colorScheme.primary,
              ),
              title: Text(email, style: TextStyle(fontWeight: FontWeight.w500)),
            ),
          ],
        ),
      ),
    );
  }
}
