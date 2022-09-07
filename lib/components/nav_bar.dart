import 'package:agent_app/pages/documents/logsheet_page.dart';
import 'package:agent_app/pages/documents/waybill_page.dart';
import 'package:agent_app/pages/informatics/bus_details_page.dart';
import 'package:agent_app/pages/informatics/route_details_page.dart';
import 'package:agent_app/pages/tickets/ticket_requests.dart';
import 'package:flutter/material.dart';

import '../pages/tickets/confirmed_tickets.dart';
import '../pages/tickets/ticket_validate.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        SizedBox(
          height: 120,
          child: UserAccountsDrawerHeader(
            accountName: Text('Solomon Chidewe'),
            accountEmail: Text('Agent ID: 0366'),
            currentAccountPictureSize: const Size.square(40),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset("assets/logo1.png",
                    width: 100, height: 100, fit: BoxFit.cover),
              ),
            ),
            //decoration: BoxDecoration(color: Colors.blueGrey),
          ),
        ),
        ListTile(
          visualDensity: VisualDensity(vertical: -4),
          leading: Icon(
            Icons.home,
            color: Colors.deepPurple,
          ),
          title: Text('Dashboard'),
          onTap: () => print('My Map'),
        ),
        Divider(),
        ListTile(
          visualDensity: VisualDensity(vertical: -4),
          leading: Icon(
            Icons.trending_up_rounded,
            color: Colors.deepPurple,
          ),
          title: Text('Statistics'),
          onTap: () => print('My Map'),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Tickets",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
          ),
        ),
        ListTile(
          visualDensity: VisualDensity(vertical: -4),
          leading: Icon(
            Icons.qr_code_scanner,
            color: Colors.deepPurple,
          ),
          title: Text('Validate Ticket'),
          //subtitle: Text("Tickets"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return ValidateTicket();
                },
              ),
            );
          },
        ),
        Divider(),
        ListTile(
          visualDensity: VisualDensity(vertical: -4),
          leading: Icon(
            Icons.check_circle,
            color: Colors.green,
          ),
          title: Text('Confirmed Tickets'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return ConfirmedTickets();
                },
              ),
            );
          },
        ),
        Divider(),
        ListTile(
          visualDensity: VisualDensity(vertical: -4),
          leading: Icon(
            Icons.receipt,
            color: Colors.deepPurple,
          ),
          title: Text('Ticket Requests'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return TicketRequests();
                },
              ),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Documents",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
          ),
        ),
        Divider(),
        ListTile(
          visualDensity: VisualDensity(vertical: -4),
          leading: Icon(
            Icons.receipt_long_outlined,
            color: Colors.deepPurple,
          ),
          title: Text('Log Sheet'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return LogSheetPage();
                },
              ),
            );
          },
        ),
        Divider(),
        ListTile(
          visualDensity: VisualDensity(vertical: -4),
          leading: Icon(
            Icons.article,
            color: Colors.deepPurple,
          ),
          title: Text('Way Bill'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return WayBillPage();
                },
              ),
            );
          },
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Informatics",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
          ),
        ),
        ListTile(
          visualDensity: VisualDensity(vertical: -4),
          leading: Icon(
            Icons.map,
            color: Colors.deepPurple,
          ),
          title: Text('Route Details'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return RouteDetailPage();
                },
              ),
            );
          },
        ),
        Divider(),
        ListTile(
          visualDensity: VisualDensity(vertical: -4),
          leading: Icon(
            Icons.info,
            color: Colors.deepPurple,
          ),
          title: Text('Bus Details'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return BusDetailPage();
                },
              ),
            );
          },
        ),
        Divider(),
        ListTile(
          visualDensity: VisualDensity(vertical: -4),
          leading: Icon(
            Icons.logout,
            color: Colors.deepPurple,
          ),
          title: Text('Log Out'),
        ),
      ],
    ));
  }
}
