import "package:flutter/material.dart";
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import '../components/nav_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Navbar(),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 36, 19, 136),
          title: Center(child: Text("Agent app")),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.info)),
          ],
        ),
        floatingActionButton: SpeedDial(
          //activeIcon: Icons.add,
          overlayOpacity: 0.4,
          overlayColor: Colors.black,
          backgroundColor: Color.fromARGB(255, 36, 19, 136),
          animatedIcon: AnimatedIcons.menu_close,
          spacing: 12,
          children: [
            SpeedDialChild(
              child: Icon(Icons.map),
              label: "New Trip",
            ),
            SpeedDialChild(
                child: Icon(Icons.assignment_ind), label: "New Attendance"),
            SpeedDialChild(child: Icon(Icons.receipt), label: "New Ticket"),
          ],
        ),
        body: Column(
          children: [
            //Text("hello")
          ],
        ));
  }
}
