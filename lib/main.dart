import 'package:flutter/material.dart';

void main() {
  runApp(SuperMarketApp());
}

class SuperMarketApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Super Market App',
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false, // This line added
      body: Center(
        // Wrap the Column with Center widget
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Illustration
            Container(
              margin: EdgeInsets.only(bottom: 20.0),
              child: Image.asset(
                'assets/welcome.png', // Replace with actual image asset
                width: 300.0,
                height: 300.0,
              ),
            ),
            // Text Content
            Text(
              'Welcome to Super Market',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 36.0,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Connect via Bluetooth',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 30.0),
            // Connect Button
            SizedBox(
              width: 200.0, // Set the width of the button
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // Add Bluetooth connection logic
                },
                child: Text(
                  'Connect',
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.black,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.orange),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
