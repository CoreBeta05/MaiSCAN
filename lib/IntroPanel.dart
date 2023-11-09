import 'package:flutter/material.dart';
import 'package:MaisControl/main.dart';

void main() {
  runApp(MaterialApp(
    home: IntroPanel(),
  ));
}

class IntroPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to MaisControl app'),
          home: IntroPanel(),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome to the MaisControl App',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Disclaimer!\n    This app is not designed for identifying undefined objects but\nrather specializes in identifying corn pests.\nClick the button below to start the app:',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
ElevatedButton(
  onPressed: () {
    // Navigate to the main app
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MyApp(cameras: cameras)),
    );
  },
  child: Text('Start App'),
),

            ],
          ),
        ),
      ),
    );
  }
}
