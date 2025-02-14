import 'dart:async';
import 'package:flutter/material.dart';

class TrackingPage extends StatefulWidget {
  final String driverName;

  TrackingPage({required this.driverName});

  @override
  _TrackingPageState createState() => _TrackingPageState();
}

class _TrackingPageState extends State<TrackingPage> {
  String currentLocation = "Lat: 0.0, Lng: 0.0";
  late Timer timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 2), (timer) {
      setState(() {
        // Simulate changing coordinates
        double lat = 37.7749 + (timer.tick * 0.001);
        double lng = -122.4194 + (timer.tick * 0.001);
        currentLocation =
            "Lat: ${lat.toStringAsFixed(4)}, Lng: ${lng.toStringAsFixed(4)}";
      });
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tracking ${widget.driverName}"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.directions_bus,
              size: 100,
              color: const Color.fromARGB(255, 209, 59, 59),
            ),
            SizedBox(height: 20),
            Text(
              "Tracking ${widget.driverName}'s location",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              "Current location: $currentLocation",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}