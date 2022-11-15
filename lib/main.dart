import 'package:flutter/material.dart';
import 'package:flutter_time/pages/home.dart';
import 'package:flutter_time/pages/loading.dart';
import 'package:flutter_time/pages/choose_location.dart';

void main() => runApp(MaterialApp(
      home: Home(),
      routes: {
        '/loading': (context) => Loading(),
        '/home': (context) => Home(),
        '/choose_location': (context) => ChooseLocation(),
      },
    ));
