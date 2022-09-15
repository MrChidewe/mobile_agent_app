import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class LogSheetPage extends StatefulWidget {
  const LogSheetPage({Key? key}) : super(key: key);

  @override
  State<LogSheetPage> createState() => _LogSheetPageState();
}

class _LogSheetPageState extends State<LogSheetPage> {
  final pdf = pw.Document;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromARGB(216, 224, 224, 6),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(36, 19, 136, 1),
        title: Center(child: Text("Log Sheet")),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.print)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: Column(
        children: [
          Container(
            child: Image.asset("assets/logsheet.png",
                width: 340, height: 450, fit: BoxFit.fill),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                  onPressed: () {}, child: Text("Generate Logsheet")),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(onPressed: () {}, child: Text("Confirm")),
            ],
          ),
        ],
      ),
    );
  }
}
