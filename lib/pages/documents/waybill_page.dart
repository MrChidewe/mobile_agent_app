import 'package:flutter/material.dart';

class WayBillPage extends StatefulWidget {
  const WayBillPage({Key? key}) : super(key: key);

  @override
  State<WayBillPage> createState() => _WayBillPageState();
}

class _WayBillPageState extends State<WayBillPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 36, 19, 136),
        title: Center(child: Text("Way Bill")),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.info)),
        ],
      ),
    );
  }
}
