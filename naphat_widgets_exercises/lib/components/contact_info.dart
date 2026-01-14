/// Contact Info
///
/// This widget displays a contact information card with address, email,
/// and phone number.
///
/// ============================================
/// AI DOCUMENTATION
/// No AI tools were used for this file.
/// All code written independently.
///
/// The ContactInfo class is implemented as a StatelessWidget that stores
/// the address name, address information, email, and phone number.
/// It returns a Card containing a Column with three information rows.
/// Each row consists of an Icon and Text widgets displaying the details.
/// CrossAxisAlignment.start is used to keep text neatly aligned,
/// and SizedBox provides consistent spacing between icon and text.
/// Padding is added to each row to separate content from dividers.
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
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.location_on,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        addressName,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(addressInfo),
                    ],
                  ),
                ],
              ),
            ),

            const Divider(),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                children: [
                  Icon(
                    Icons.phone,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  const SizedBox(width: 12),
                  Text(phone, style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),

            const Divider(),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  const SizedBox(width: 12),
                  Text(email, style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*

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
    return Card(
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
    );
  }
}

*/
