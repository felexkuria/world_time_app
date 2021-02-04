import 'package:flutter/material.dart';
import 'package:world_time_app/screens/loading.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.amber),
    home: Loading(),
    // initialRoute: '/',
    // routes: {
    //   '/': (context) => WorldTimeApp(
    //         flag: worldTime.flag,
    //         location: null,
    //         time: null,
    //       ),
    //   'loading': (context) => Loading(),
    //   'location': (context) => ChooseLocatiion()
    // },
  ));
}
