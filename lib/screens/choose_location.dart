import 'package:flutter/material.dart';
import 'package:world_time_app/services/world_time.dart';

class ChooseLocatiion extends StatefulWidget {
  @override
  _ChooseLocatiionState createState() => _ChooseLocatiionState();
}

class _ChooseLocatiionState extends State<ChooseLocatiion> {
  // int counter = 0;
  List<WorldTime> locations = [
    WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png'),
    WorldTime(url: 'Europe/Berlin', location: 'Athens', flag: 'greece.png'),
    WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
    WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
    WorldTime(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
    WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
    WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
  ];

  void updateTime(index) async {
    WorldTime worldTime = locations[index];
    await worldTime.getTime();
    Navigator.pop(context, {
      'location': worldTime.location,
      'time': worldTime.time,
    });
  }

  @override
  Widget build(BuildContext context) {
    print('object in build State');
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text('Choose Location'),
          backgroundColor: Colors.indigo[100],
          elevation: 0.0,
        ),
        body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
              child: Card(
                child: ListTile(
                  onTap: () {
                    updateTime(index);
                  },
                  title: Text(locations[index].location),
                  leading: CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/${locations[index].flag}'),

                    // NetworkImage(
                    //     'https://github.com/iamshaunjp/flutter-beginners-tutorial/blob/lesson-35/world_time_app/assets/kenya.png?raw=true'),
                  ),
                ),
              ),
            );
          },
        ));
  }
}
