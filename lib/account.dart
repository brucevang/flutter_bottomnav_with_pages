import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Account Page')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
        Container(

      child: Text('Hello Account'),
    ),
      ],)
    );
  }
}