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
    // update the time property with the value from the newdata object

    // Map data =
    //     ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;

    // Update the home screen with time data from the new data object
    data = data.isNotEmpty
        ? data
        : ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;

    print(data);

    // set background image
    String bgImage = data['isDayTime'] ? 'day.jpg' : 'night.jpg';

    return Scaffold(
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/$bgImage'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          // Column is a widget that allows us to stack widgets vertically
          children: <Widget>[
            TextButton.icon(
              onPressed: () async {
                dynamic result =
                    await Navigator.pushNamed(context, '/choose_location');
                setState(() {
                  data = {
                    'time': result['time'],
                    'location': result['location'],
                    'flag': result['flag'],
                    'isDayTime': result['isDayTime'],
                  };
                });
              },
              icon: Icon(Icons.edit_location_alt_sharp),
              label: Text("Edit Location"),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  data['location'],
                  style: TextStyle(
                    fontSize: 28.0,
                    letterSpacing: 2.0,
                    // if isDayTime is true, then set color to black, else set color to white
                    color: data['isDayTime'] ? Colors.black : Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              data['time'],
              style: TextStyle(
                fontSize: 66.0,
                color: data['isDayTime'] ? Colors.black : Colors.white,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
