import 'package:flutter/material.dart';
import 'package:flutter_time/services/world_time.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setupWorldTime() async {
    WorldTime instance = WorldTime(
        location: 'Stocholm',
        flag: 'se.png',
        url: 'Europe/Stockholm',
        isDayTime: false);
    await instance.getTime();
    print(instance.time);
    Navigator.pushNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDayTime': instance.isDayTime,
    });
  }

  @override
  void initState() {
    super.initState();
    // print("initState function ran");
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[600],
      body: Center(
        child: SpinKitSpinningLines(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}
