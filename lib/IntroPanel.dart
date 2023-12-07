import 'package:flutter/material.dart';
import 'dart:async';

class IntroPanel extends StatefulWidget {
  @override
  _IntroPanelState createState() => _IntroPanelState();
}

class _IntroPanelState extends State<IntroPanel> {
  bool _isShaking = false;

  @override
  void initState() {
    super.initState();
    // Start the timer to trigger button shaking every one second
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (mounted) {
        setState(() {
          _isShaking = !_isShaking;
        });
      }
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            title: Text(
                'MaisControl',
               style: TextStyle(
                  fontSize: 24, // Adjust the font size of the title
               ),
             ),
              backgroundColor: Colors.green, // Change app bar color to green
              ), 
              backgroundColor: Colors.yellow,
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
              'Disclaimer!\n    This app is not designed for identifying undefined objects but rather specializes in identifying corn pests.',
              style: TextStyle(
                fontSize: 20,
                color: Colors.red, // Change text color to red
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            // Wrap the ElevatedButton in an AnimatedContainer with a shake effect
            AnimatedContainer(
              duration: Duration(milliseconds: 500),
              transform: _isShaking ? Matrix4.rotationZ(0.1) : Matrix4.rotationZ(0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/main'); // Navigate to '/main' screen
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green[900], // Change button color to dark green
                ),
                child: Text(
                 'Start App',
                 style: TextStyle(
                   fontSize: 18, // Change the font size here
                 ),
                ),
              ),
            ),
          ],

        ),
      ),
    );
  }
}
