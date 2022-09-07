import 'package:flutter/material.dart';

class RouteDetailPage extends StatefulWidget {
  const RouteDetailPage({Key? key}) : super(key: key);

  @override
  State<RouteDetailPage> createState() => _RouteDetailPageState();
}

class _RouteDetailPageState extends State<RouteDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 36, 19, 136),
        title: Center(child: Text("Route Details")),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.info)),
        ],
      ),
    );
  }
}
