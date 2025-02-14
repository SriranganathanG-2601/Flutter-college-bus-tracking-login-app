import 'package:flutter/material.dart';
import 'tracking_page.dart';

class DriverListPage extends StatelessWidget {
  final List<String> drivers = [
    "Bus no.27 Kurinjipadi via Thattamplayam",
    "Bus no.2 Neyveli - TS via Panruti",
    "Bus no.16 Mandarakuppam via vadalur",
    "Bus no.26 Neyveli arch gate",
    "Bus no.14 Naduveerapattu via panruti",
    "Bus no.15 Panruti via Koliyanur X Road",
    "Bus no.24 Sirugramam via.: panruti",
    "Bus no.21 Cuddalore via.: post office",
    "Bus no.12 Cuddalore via Palur",
    "Bus no.13 Cuddalore via Bahoor",
    "Bus no.3 Nellikuppam via Siruvandhadu",
    "Bus no.18 Cuddalore via.: perumal kovil",
    "Bus no.28 Chidambaram via Thirubuvanai",
    "Bus no.30 Kullanchavadi via Thirubuvanai",
    "Bus no.25 Nellikuppam cuddalore via.: Thirubhuvanai",
    "Bus no.9 Reddichavadi via Pudhucherry",
    "Bus no.8 Pudhucherry-Lawspet-konimedu",
    "Bus no.19 Ulundurpet via Villupuram",
    "Bus no.22 Gingee via Villupuram",
    "Bus no.23 Periyasavalai via Arasur",
    "Bus no.1 Thirukovilur via Mampazhapattu",
    "Bus no.7 Thiruvannamalai via Villupuram",
    "Bus no.17 Vikravandi via Villupuram",
    "Bus no.29 Tindivanam via Vikravandi & Panayapuram",
    "Bus no.11 Thiruchitrambalam X-Road via Panayapuram",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Available Buses"),
      ),
      body: ListView.builder(
        itemCount: drivers.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(drivers[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TrackingPage(
                    driverName: drivers[index],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}