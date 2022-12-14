import 'package:flutter/material.dart';
import 'package:flutter_time/pages/home.dart';
import 'package:flutter_time/pages/loading.dart';
import 'package:flutter_time/pages/choose_location.dart';
import 'package:flutter_time/services/world_time.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/choose_location': (context) => ChooseLocation(),
      },
    ));
