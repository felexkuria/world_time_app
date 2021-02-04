import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WorldTimeApp extends StatefulWidget {
  WorldTimeApp(
      {@required this.location, @required this.flag, @required this.time});
  final String location;

  final String flag;
  final String time;

  //   'flag': worldTime.flag,
  //   'time

  @override
  _WorldTimeAppState createState() => _WorldTimeAppState();
}

class _WorldTimeAppState extends State<WorldTimeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
          child: Column(
            children: [
              FlatButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, 'location');
                },
                icon: Icon(Icons.edit_location),
                label: Text('Edit Location'),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.location,
                    style: TextStyle(fontSize: 28.0, letterSpacing: 2.0),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Text(
                widget.time,
                style: TextStyle(
                  fontSize: 66.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
