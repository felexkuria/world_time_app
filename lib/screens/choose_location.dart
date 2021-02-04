import 'package:flutter/material.dart';

class ChooseLocatiion extends StatefulWidget {
  @override
  _ChooseLocatiionState createState() => _ChooseLocatiionState();
}

class _ChooseLocatiionState extends State<ChooseLocatiion> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    print('object in build State');
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Choose Location'),
        elevation: 0.0,
      ),
      body: RaisedButton(
        onPressed: () {
          setState(() {
            counter++;
            print('object in build State is pressed how many times $counter');
          });
        },
        child: Text('Counter is $counter'),
      ),
    );
  }
}
