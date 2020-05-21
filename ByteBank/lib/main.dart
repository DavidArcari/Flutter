import 'package:ByteBank/screens/contacts_list.dart';
import 'package:ByteBank/screens/dashboard.dart';
import 'package:flutter/material.dart';

void main() => runApp(BytebankApp());

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