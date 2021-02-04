import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WorldTimeApp extends StatefulWidget {
  @override
  _WorldTimeAppState createState() => _WorldTimeAppState();
}

class _WorldTimeAppState extends State<WorldTimeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            FlatButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, 'location');
                },
                icon: Icon(Icons.edit_location),
                label: Text('Edit Location'))
          ],
        ),
      ),
    );
  }
}
