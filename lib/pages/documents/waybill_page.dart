//import 'dart:html';
import 'dart:io';
import 'package:flutter/material.dart';
//import 'package:syncfusion_flutter_pdf/pdf.dart';
//import 'package:agent_app/methods/mobile_pdf_view.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:printing/printing.dart';
import 'package:pdf/pdf.dart';
import 'dart:typed_data';

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
                    // style: ButtonStyle(
                    // backgroundColor:
                    //  MaterialStateProperty.all(Color.fromARGB(255, 36, 19, 136))),
                    onPressed: _createPdf,
                    child: Text("Generate bill")),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(onPressed: _createPdf, child: Text("Confirm")),
              ],
            ),
          ],
        ));
  }

  Future<void> _createPdf() async {
    final Font = await PdfGoogleFonts.nunitoExtraLight();
    final pdf = pw.Document();
    pdf.addPage(pw.Page(
      build: (pw.Context context) => pw.Center(
        child: pw.Text("hello world", style: pw.TextStyle(font: Font)),
      ),
    ));

    final output = await getTemporaryDirectory();
    final file = File("${output.path}/example.pdf");

    //final file = File('example.pdf');
    await file.writeAsBytes(await pdf.save());
  }
}
