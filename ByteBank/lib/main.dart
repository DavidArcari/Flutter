import 'package:ByteBank/database/app_database.dart';
import 'package:ByteBank/models/contact.dart';
import 'package:ByteBank/screens/dashboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BytebankApp());
  save(Contact(0, 'David', 1010)).then((id){
    findAll().then((contacts) => debugPrint(contacts.toString()));
  });
}

class BytebankApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[900],
        accentColor: Colors.blueAccent,
        buttonColor: Colors.blueAccent,

      ),
      home: Dashboard(),
    ); //MaterialApp
  }
}