import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ValidateTicket extends StatefulWidget {
  const ValidateTicket({Key? key}) : super(key: key);

  @override
  State<ValidateTicket> createState() => _ValidateTicketState();
}

class _ValidateTicketState extends State<ValidateTicket> {
  String _scanBarCode = "";

  @override
  void initState() {
    super.initState();
  }

  Future<void> scanQR() async {
    String barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#0e32e8', 'Cancel', true, ScanMode.QR);
      print(barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _scanBarCode = barcodeScanRes;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 36, 19, 136),
        title: Center(child: Text("Ticket Verification")),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.info)),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50),
            Text(
              "Scan QR Code to verify ticket",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 20),
            Icon(Icons.qr_code_scanner, size: 80),
            SizedBox(height: 20),
            Text('Scan result : $_scanBarCode\n',
                style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: GestureDetector(
                onTap: scanQR,
                child: Container(
                  width: 150,
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 36, 19, 136),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      'Start Verification',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
