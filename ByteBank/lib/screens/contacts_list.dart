import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContactsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              title: Text(
                'David', 
                style: TextStyle(
                  fontSize: 20
                  ),
                ),
              subtitle: Text(
                '1010',
                style: TextStyle(
                  fontSize: 14
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),  
      ),
    );
  }
}