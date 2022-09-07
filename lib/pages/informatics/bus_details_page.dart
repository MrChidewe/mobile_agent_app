import 'dart:ui';

import 'package:flutter/material.dart';

class BusDetailPage extends StatefulWidget {
  const BusDetailPage({Key? key}) : super(key: key);

  @override
  State<BusDetailPage> createState() => _BusDetailPageState();
}

class _BusDetailPageState extends State<BusDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 36, 19, 136),
      appBar: AppBar(
        //toolbarHeight: 40,
        backgroundColor: Color.fromARGB(255, 36, 19, 136),
        title: Center(child: Text("Bus Details")),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.info)),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(
                children: [
                  SampleTicket(),
                  SizedBox(height: 15),
                  Text(
                    'Additional Information',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Table(
                      //columnWidths: ,
                      border: TableBorder.all(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10)),
                      children: [
                        TableRow(
                            decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10))),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Fleet Number",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("1205",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ]),
                        TableRow(
                            decoration: BoxDecoration(color: Colors.grey),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Driver",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Mr Chidewe",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ]),
                        TableRow(
                            decoration: BoxDecoration(color: Colors.grey),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Number Plate",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("AEQ 2033",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ]),
                        TableRow(
                            decoration: BoxDecoration(color: Colors.blueGrey),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Depot",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Belvedere, Harare",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ]),
                        TableRow(
                            decoration: BoxDecoration(color: Colors.grey),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Service Routes",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("City- Ziko, Chitungwiza",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ]),
                        TableRow(
                            decoration: BoxDecoration(color: Colors.blueGrey),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Total Passengers",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("65 seated, 20 standing",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ]),
                        TableRow(
                            decoration: BoxDecoration(color: Colors.grey),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Service Status",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Fully Serviced as at 12/10/22",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ]),
                        TableRow(
                            decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10))),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Manufacture",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Faw GD",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ]),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SampleTicket extends StatelessWidget {
  const SampleTicket({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              //1st section
              Container(
                width: 100,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.black),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                  color: Colors.white,
                ),
                child: Column(children: [
                  Image.asset("assets/zupcobus.png",
                      width: 100, height: 100, fit: BoxFit.fitWidth),
                  Text(
                    'Golden Dragon',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(
                    'City to Ziko',
                    style: TextStyle(
                      color: Color.fromARGB(255, 36, 19, 136),
                    ),
                  ),
                  //star reviews
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: Color.fromARGB(255, 36, 19, 136),
                          size: 14,
                        ),
                        Icon(
                          Icons.star,
                          color: Color.fromARGB(255, 36, 19, 136),
                          size: 14,
                        ),
                        Icon(
                          Icons.star,
                          color: Color.fromARGB(255, 36, 19, 136),
                          size: 14,
                        ),
                        Icon(
                          Icons.star,
                          color: Color.fromARGB(255, 36, 19, 136),
                          size: 14,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.grey,
                          size: 14,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '4.5',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  )
                ]),
              ),
              //2nd section
              Container(
                width: 200,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.black),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.tv,
                              color: Colors.grey,
                              size: 20,
                            ),
                            Icon(
                              Icons.heat_pump,
                              color: Colors.grey,
                              size: 20,
                            ),
                            Text(
                              'AC',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Icon(
                      Icons.timer,
                      color: Colors.grey,
                      size: 20,
                    ),
                    Text('Journey start'),
                    Text(
                      '12 August, 8:00am',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.grey,
                                  size: 20,
                                ),
                                Text(
                                  'From- TO',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Text(
                              'City- Ziko',
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 19, 136),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
