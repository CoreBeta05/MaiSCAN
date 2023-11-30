import 'package:flutter/material.dart';

class IntroPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MaisControl'),
          backgroundColor: Colors.green, // Change app bar color to green
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
                'Disclaimer!\n    This app is not designed for identifying undefined\n objects but rather specializes in identifying corn pests.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.red, // Change text color to red
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/main');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green, // Change button color to green
                ),
                child: Text('Start App'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
