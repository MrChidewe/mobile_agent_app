import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class ConfirmedTickets extends StatefulWidget {
  const ConfirmedTickets({Key? key}) : super(key: key);

  @override
  State<ConfirmedTickets> createState() => _ConfirmedTicketsState();
}

class _ConfirmedTicketsState extends State<ConfirmedTickets> {
  int choiceIndex = 0;

  Map<String, double> dataMap = {
    "72 Succesfully Confirmed": 80,
    "18 Awaiting Confirmation": 20,
  };

  List<Color> colorList = [
    Colors.blue,
    Colors.yellow,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 36, 19, 136),
        title: Center(child: Text("Confirmed Tickets")),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.info)),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              height: 250,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Total Pasengers: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.green),
                        ),
                        Text("94", style: TextStyle(fontSize: 30)),
                      ],
                    ),
                  ),
                  PieChart(
                    dataMap: dataMap,
                    colorList: colorList,
                    animationDuration: Duration(milliseconds: 1200),
                    chartRadius: MediaQuery.of(context).size.width / 2,
                    //centerText: "status",
                    chartValuesOptions: ChartValuesOptions(
                        //showChartValues: false,
                        //showChartValuesOutside: true,
                        showChartValuesInPercentage: true),
                    legendOptions: LegendOptions(
                      legendShape: BoxShape.rectangle,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
