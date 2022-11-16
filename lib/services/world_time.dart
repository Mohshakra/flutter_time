import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  late String location;
  late String time;
  late String flag;
  late String url;
  late bool isDayTime;

  WorldTime(
      {required this.location,
      required this.flag,
      required this.url,
      required this.isDayTime});

  Future<void> getTime() async {
    try {
      print('url is $url');
      Response response = await get(Uri.parse(
          'http://worldtimeapi.org/api/timezone/$url')); // make the request

      Map data = jsonDecode(response.body);

      // Get properties from data
      String datetime = data['datetime'];
      String offset = data['utc_offset'];

      // add offset to datetime
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset.substring(1, 3))));
      time = DateFormat().add_jm().format(now);

      isDayTime = now.hour > 6 && now.hour < 20 ? true : false;

      print(time);
    } catch (e) {
      print('caught error: $e');
      time = 'could not get time data';
    }
  }
}




// url : "http://worldtimeapi.org/api/timezone/$Loc",
// flag : "$Loc.png",
// location : "$Loc",
// time : "$hour:$min:$sec",
