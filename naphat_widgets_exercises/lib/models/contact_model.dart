/// Contact Model
///
/// This class represents a contact data model used in
/// the ContactListScreen widget.
///
/// ============================================
/// AI DOCUMENTATION
/// No AI tools were used for this file.
/// All code written independently.
///
/// The Contact class defines a contact object containing the name,
/// and phoneNumber. It uses a const constructor with required
/// parameters to create immutable contact instances.
/// ============================================
///
/// Author: Naphat Chanthakorn
/// Version: 1.0.0
/// Date: 2026-01-07
library;

class Contact {
  final String name;
  final String phoneNumber;

  const Contact({required this.name, required this.phoneNumber});
}
