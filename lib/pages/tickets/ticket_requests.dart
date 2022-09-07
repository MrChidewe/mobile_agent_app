import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}

class TicketRequests extends StatefulWidget {
  const TicketRequests({Key? key}) : super(key: key);

  @override
  State<TicketRequests> createState() => _TicketRequestsState();
}

class _TicketRequestsState extends State<TicketRequests> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 36, 19, 136),
          title: Center(child: Text("Ticket Requests")),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.info)),
          ],
        ),
        body: Center(
            child: Container(
                child: SfCartesianChart(
          // Initialize category axis
          primaryXAxis: CategoryAxis(),
          title: ChartTitle(
              text: "Today's ticket analysis", backgroundColor: Colors.orange),
          legend: Legend(isVisible: true),
          series: <LineSeries<SalesData, String>>[
            LineSeries<SalesData, String>(
                // Bind data source
                name: "Sales",
                dataLabelSettings: DataLabelSettings(isVisible: true),
                dataSource: <SalesData>[
                  SalesData('6am', 85),
                  SalesData('10am', 58),
                  SalesData('12pm', 64),
                  SalesData('4pm', 92),
                  SalesData('8pm', 100)
                ],
                xValueMapper: (SalesData sales, _) => sales.year,
                yValueMapper: (SalesData sales, _) => sales.sales),
            LineSeries<SalesData, String>(
                // Bind data source
                name: "Requests",
                dataLabelSettings: DataLabelSettings(isVisible: true),
                dataSource: <SalesData>[
                  SalesData('6am', 105),
                  SalesData('10am', 78),
                  SalesData('12pm', 84),
                  SalesData('4pm', 142),
                  SalesData('8pm', 130)
                ],
                xValueMapper: (SalesData sales, _) => sales.year,
                yValueMapper: (SalesData sales, _) => sales.sales),
          ],
        ))));
  }
}
