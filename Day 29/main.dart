import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// MIXIN
mixin DisplayInfo {
  String appInfo() => "Contact List Application";
}

// ENCAPSULATION
class Contact {
  String _name;
  String _phone;

  // CONSTRUCTOR
  Contact(this._name, this._phone);

  // GETTERS
  String get name => _name;
  String get phone => _phone;

  // SETTERS
  set name(String newName) {
    _name = newName;
  }

  set phone(String newPhone) {
    _phone = newPhone;
  }
}

class MyApp extends StatelessWidget with DisplayInfo {
  MyApp({super.key});

  final List<String> categories = [
    "Family",
    "Friends",
    "Work",
    "College",
  ];

  final List<Contact> contacts = [
    Contact("Akhil", "9876543210"),
    Contact("Rahul", "9876501234"),
    Contact("Anu", "9999988888"),
    Contact("Meera", "9123456780"),
    Contact("Vishnu", "9012345678"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appInfo()),
          backgroundColor: Colors.teal,
        ),
        body: Column(
          children: [

            // CATEGORY GRID
            Padding(
              padding: const EdgeInsets.all(10),
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: categories.length,
                gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 3,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.teal.shade200,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      categories[index],
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                },
              ),
            ),

            // CONTACT LIST
            Expanded(
              child: ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 5),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.teal,
                        child: Text(
                          contacts[index].name[0],
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      title: Text(contacts[index].name),
                      subtitle: Text(contacts[index].phone),
                      trailing: const Icon(Icons.phone),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}