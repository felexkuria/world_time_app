import 'dart:convert';
import 'package:intl/intl.dart';

import 'package:http/http.dart';

class WorldTime {
  String location;
  String time;
  String flag;
  String url;

  WorldTime(
      {this.location,
      this.time,
      this.flag,
      this.url}); //location url for api end point

  Future<void> getTime() async {
    try {
      //Make Request
      Response response =
          await get('https://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body);
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);
      //print(datetime);
      //print(offset);
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));
      // //set time Property
      time = DateFormat.jm().format(now);
      print(time);
    } catch (e) {
      time = "Unable to Load Data";
      print("caught an Error:$e");
    }
  }
}
