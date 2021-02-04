import 'package:flutter/material.dart';
import 'package:world_time_app/screens/choose_location.dart';
import 'package:world_time_app/screens/home.dart';
import 'package:world_time_app/screens/loading.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.amber),
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      'loading': (context) => Loading(),
      'location': (context) => ChooseLocatiion()
    },
  ));
}
