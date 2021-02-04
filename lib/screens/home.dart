import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:world_time_app/screens/choose_location.dart';

class WorldTimeApp extends StatefulWidget {
  WorldTimeApp(
      {@required this.location,
      @required this.flag,
      @required this.time,
      @required this.isDayTime});
  final String location;

  final String flag;
  final String time;
  final bool isDayTime;

  //   'flag': worldTime.flag,
  //   'time

  @override
  _WorldTimeAppState createState() => _WorldTimeAppState();
}

class _WorldTimeAppState extends State<WorldTimeApp> {
  @override
  Widget build(BuildContext context) {
    Color bgColor = widget.isDayTime ? Colors.blue : Colors.indigo[700];
    String bgImage = widget.isDayTime ? 'day.png' : 'night.png';

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/$bgImage'), fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
            child: Column(
              children: [
                FlatButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => ChooseLocatiion(),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.edit_location,
                    color: Colors.grey[300],
                  ),
                  label: Text(
                    'Edit Location',
                    style: TextStyle(
                      color: Colors.grey[300],
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.location,
                      style: TextStyle(
                          fontSize: 28.0,
                          color: Colors.white,
                          letterSpacing: 2.0),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Text(
                  widget.time,
                  style: TextStyle(fontSize: 66.0, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
