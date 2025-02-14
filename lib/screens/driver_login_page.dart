import 'package:flutter/material.dart';
import 'package:busapp/screens/driver_tracking_page.dart';
import 'package:permission_handler/permission_handler.dart';

class DriverLoginPage extends StatelessWidget {
  Future<void> requestLocationPermission(BuildContext context) async {
    var status = await Permission.location.request();
    if (status.isGranted) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DriverTrackingPage(),
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Location Permission"),
          content:
              Text("Location permission is required to track your location."),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("OK"),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Driver Login"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(labelText: "Driver ID"),
              ),
              TextField(
                decoration: InputDecoration(labelText: "Password"),
                obscureText: true,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  await requestLocationPermission(context);
                },
                child: Text("Login and Enable Tracking"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}