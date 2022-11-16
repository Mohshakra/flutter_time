import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String Loc_url = "http://worldtimeapi.org/api/timezone/";
  String Loc = "Europe/London";
  void getData() async {
    Response response =
        await get(Uri.parse(Loc_url + Loc)); // get the data from the url
    Map data = jsonDecode(response.body);
    // print(data);

    // Get properties from data
    String datetime = data['datetime'];
    String offset = data['utc_offset'];

    // add offset to datetime
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset.substring(1, 3))));
    // print hour,min,sec

    String hour = now.hour.toString();
    String min = now.minute.toString();
    String sec = now.second.toString();

    print('$Loc  $hour:$min:$sec');
  }

  void initState() {
    super.initState();
    // print("initState function ran");
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text("Loading Screen"));
  }
}
