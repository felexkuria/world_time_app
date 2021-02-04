import 'package:flutter/material.dart';
import 'package:world_time_app/screens/home.dart';
import 'package:world_time_app/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  // String time = 'loading';
  void setUpWorldTime() async {
    WorldTime worldTime = WorldTime(
        url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png');
    await worldTime.getTime();
    //print(worldTime.time);
    // // print(instance.time);
    // setState(() {
    //   time = worldTime.time;
    // });

    // Navigator.pushReplacementNamed(context, '/', arguments: {
    //   'location': worldTime.location,
    //   'flag': worldTime.flag,
    //   'time': worldTime.time,
    // });

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => WorldTimeApp(
          flag: worldTime.flag,
          location: worldTime.location,
          time: worldTime.time,
          isDayTime: worldTime.isDayTime,
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    // print('object in Init State');
    // worldTime.getTime();
    setUpWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[100],
      body: Center(
        child: SpinKitFadingCircle(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}
