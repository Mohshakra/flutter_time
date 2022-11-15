import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
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
