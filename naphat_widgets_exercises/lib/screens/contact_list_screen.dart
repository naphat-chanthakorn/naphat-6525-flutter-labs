import 'package:flutter/material.dart';
import '../models/contact_model.dart';

class ContactListScreen extends StatefulWidget {
  const ContactListScreen({super.key});

  @override
  State<ContactListScreen> createState() => _ContactListScreenState();
}

class _ContactListScreenState extends State<ContactListScreen> {
  final List<Contact> _contacts = [
    Contact(name: "John Doe", phoneNumber: "123-456-7890"),
    Contact(name: "Jane Smith", phoneNumber: "987-654-3210"),
    Contact(name: "Alice Johnson", phoneNumber: "555-555-5555"),
  ];

  int _counter = 1;

  void _addContact() {
    setState(() {
      _contacts.add(
        Contact(
          name: "New Contact $_counter",
          phoneNumber: "000-000-${_counter.toString().padLeft(4, '0')}",
        ),
      );
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Contact')),
      body: ListView.separated(
        padding: const EdgeInsets.only(top: 16),
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            padding: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceContainer,
              border: Border.all(
                color: Theme.of(context).colorScheme.outline,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              title: Text(
                _contacts[index].name,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              trailing: Text(
                _contacts[index].phoneNumber,
                style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Container(
            height: 10,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
            ),
          );
        },
        itemCount: _contacts.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addContact,
        tooltip: "Add one more contact",
        child: const Icon(Icons.add),
      ),
    );
  }
}
