import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
    // print("initState function ran");
  }

  @override
  Widget build(BuildContext context) {
    // print("initState function ran");

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text("Choose a Location"),
        centerTitle: true,
        elevation: 0,
      ),
      body:
          // print  the counter
          ElevatedButton(
        onPressed: () {
          setState(() {
            counter += 1;
          });
        },
        child: Text("Counter is $counter"),
      ),
      // backgroundColor: Colors.blue[900],
      // title: Text("ChooseLocation"),
      // centerTitle: true,
      // elevation: 0,
    );
  }
}
