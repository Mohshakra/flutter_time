import 'package:flutter/material.dart';
import 'package:flutter_time/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  List<WorldTime> locations = [
    WorldTime(
        url: 'Europe/London',
        location: 'London',
        flag: 'gb-eng.png',
        isDayTime: false),
    WorldTime(
        url: 'Europe/Berlin',
        location: 'Athens',
        flag: 'gr.png',
        isDayTime: false),
    WorldTime(
        url: 'Africa/Cairo',
        location: 'Cairo',
        flag: 'eg.png',
        isDayTime: false),
    WorldTime(
        url: 'Africa/Nairobi',
        location: 'Nairobi',
        flag: 'ke.png',
        isDayTime: false),
    WorldTime(
        url: 'America/Chicago',
        location: 'Chicago',
        flag: 'us.png',
        isDayTime: false),
    WorldTime(
        url: 'America/New_York',
        location: 'New York',
        flag: 'us.png',
        isDayTime: false),
    WorldTime(
        url: 'Asia/Seoul', location: 'Seoul', flag: 'kr.png', isDayTime: false),
    WorldTime(
        url: 'Asia/Jakarta',
        location: 'Jakarta',
        flag: 'id.png',
        isDayTime: false),
    WorldTime(
        url: 'Asia/Kolkata',
        location: 'Kolkata',
        flag: 'in.png',
        isDayTime: false),
    WorldTime(
        url: 'Asia/Tokyo', location: 'Tokyo', flag: 'jp.png', isDayTime: false),
    WorldTime(
        url: 'Australia/Sydney',
        location: 'Sydney',
        flag: 'au.png',
        isDayTime: false),
  ];

  void updatetime(index) async {
    WorldTime instance = locations[index];
    await instance.getTime();
    // navigate to home screen
    Navigator.pop(context, {
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
      body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
              child: Card(
                child: ListTile(
                  onTap: () {
                    updatetime(index);
                  },
                  title: Text(locations[index].location),
                  leading: CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/${locations[index].flag}'),
                  ),
                ),
              ),
            );
          }),
      // backgroundColor: Colors.blue[900],
      // title: Text("ChooseLocation"),
      // centerTitle: true,
      // elevation: 0,
    );
  }
}
