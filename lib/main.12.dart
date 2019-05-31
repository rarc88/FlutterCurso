import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {

  List<ContactModel> getContactList() {
    return <ContactModel>[
      ContactModel('Roberto Ruiz', 'rarc88@gmail.com'),
      ContactModel('B.....', 'B.....'),
      ContactModel('C.....', 'C.....'),
      ContactModel('D.....', 'D.....'),
      ContactModel('E.....', 'E.....'),
      ContactModel('F.....', 'F.....'),
      ContactModel('G.....', 'G.....'),
      ContactModel('H.....', 'H.....'),
      ContactModel('I.....', 'I.....'),
      ContactModel('J.....', 'J.....'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
        backgroundColor: Colors.tealAccent,
      ),
      body: Container(
        child: ContactListView(getContactList()),
      ),
    );
  }
}

class ContactListView extends StatelessWidget {
  final List<ContactModel> contactList;
  ContactListView(this.contactList);

  List<ContactListTile> getContactListTile() {
    return contactList
      .map((contact) => ContactListTile(contact))
      .toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: getContactListTile(),
    );
  }
  
}

class ContactListTile extends StatelessWidget {
  final ContactModel contact;
  ContactListTile(this.contact);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(child: Text(contact.name[0])),
      title: Text(contact.name),
      subtitle: Text(contact.email),
    );
  }
  
}

class ContactModel {
  final String name;
  final String email;

  ContactModel(this.name, this.email);
}