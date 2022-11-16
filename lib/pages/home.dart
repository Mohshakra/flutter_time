import 'package:flutter/material.dart';
import 'package:flutter_time/pages/loading.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> data =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    print(data);

    return Scaffold(
      body: SafeArea(
          child: Column(
        // Column is a widget that allows us to stack widgets vertically
        children: <Widget>[
          TextButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, '/choose_location');
            },
            icon: Icon(Icons.edit_location_alt_sharp),
            label: Text("Edit Location"),
          ),
        ],
      )),
    );
  }
}
