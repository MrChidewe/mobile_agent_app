import 'package:flutter/material.dart';

class LogSheetPage extends StatefulWidget {
  const LogSheetPage({Key? key}) : super(key: key);

  @override
  State<LogSheetPage> createState() => _LogSheetPageState();
}

class _LogSheetPageState extends State<LogSheetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 36, 19, 136),
        title: Center(child: Text("Log Sheet")),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.info)),
        ],
      ),
    );
  }
}
