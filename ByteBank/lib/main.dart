import 'package:flutter/material.dart';

void main() => runApp(BytebankApp());

class BytebankApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[900],
        accentColor: Colors.greenAccent,
        buttonColor: Colors.greenAccent,

      ),
      home: Dashboard(),
    ); //MaterialApp
  }
}

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('images/bytebank_logo.png'),  
          ),
          Padding(
            padding: EdgeInsets.all(25.0),
            child: Container(
              padding: EdgeInsets.all(8.0),
              height: 100,
              width: 150,
              color: Theme.of(context).primaryColor,
              child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.people, 
                  color: Colors.white,
                  size: 32,
                  ),
                Text(
                  'Contacts', 
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                    ),
                  )
                ],
              ),
            ),
          ),  
        ],
      ),
    );
  }
}