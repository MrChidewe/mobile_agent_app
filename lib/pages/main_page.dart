import "package:flutter/material.dart";
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import '../components/nav_bar.dart';

enum Menu { itemOne, itemTwo }

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String _selectedMenu = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 36, 19, 136),
      drawer: Navbar(),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 36, 19, 136),
        title: Center(child: Text("Agent app")),
        actions: <Widget>[
          PopupMenuButton<Menu>(
            onSelected: (Menu item) {
              setState(() {
                _selectedMenu = item.name;
              });
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<Menu>>[
              const PopupMenuItem<Menu>(
                  value: Menu.itemOne, child: Text("About")),
              const PopupMenuItem<Menu>(
                  value: Menu.itemTwo, child: Text("Settings"))
            ],
          )
        ],
        //icon: Icon(Icons.info)),
      ),
      floatingActionButton: SpeedDial(
        activeIcon: Icons.close,
        icon: Icons.add,
        overlayOpacity: 0.4,
        overlayColor: Colors.black,
        backgroundColor: Color.fromARGB(255, 36, 19, 136),
        //animatedIcon: AnimatedIcons.menu_close,
        spacing: 12,
        children: [
          SpeedDialChild(
            child: Icon(
              Icons.map,
              color: Color.fromARGB(255, 36, 19, 136),
            ),
            label: "New Trip",
          ),
          SpeedDialChild(
              child: Icon(
                Icons.assignment_ind,
                color: Color.fromARGB(255, 36, 19, 136),
              ),
              label: "Mark Attendance"),
          SpeedDialChild(
              child: Icon(
                Icons.receipt,
                color: Colors.deepPurple,
              ),
              label: "Issue Ticket"),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: ListView(
                children: [
                  SizedBox(
                    height: 200,
                  ),
                  Center(
                    child: Container(
                      child: Image.asset("assets/zlogo.png",
                          width: 320, height: 60, fit: BoxFit.fill),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
