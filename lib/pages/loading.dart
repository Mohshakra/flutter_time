import 'package:flutter/material.dart';
import 'package:flutter_time/services/world_time.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setupWorldTime() {
    WorldTime instance = WorldTime(
        location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
    instance.getTime();
  }

  @override
  void initState() {
    super.initState();
    // print("initState function ran");
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text("Loading Screen"));
  }
}
