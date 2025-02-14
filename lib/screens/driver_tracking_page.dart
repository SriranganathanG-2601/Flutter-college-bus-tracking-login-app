import 'package:flutter/material.dart';

class DriverTrackingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Driver Location Tracking"),
      ),
      body: Center(
        child: Text("Tracking your location..."),
      ),
    );
  }
}