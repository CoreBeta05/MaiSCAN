import 'package:flutter/material.dart';

class IntroPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to MaisControl app'),
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
                  Navigator.pushNamed(context, '/main');
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
