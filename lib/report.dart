import 'package:flutter/material.dart';
import 'dart:io';
import 'package:MaisControl/details.dart';

class Report extends StatefulWidget {
  final String pathImg;
  final List<double> value;
  const Report({super.key, required this.pathImg, required this.value});

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  late Widget content;

  @override
  void initState() {
    super.initState();
    setState(() {
      List<String> className = [
        'Army_worm',
        'Corn_borer',
        'Cut_worm',
        'Ear_worm',
        'No_pest',
        'Seedling_maggot',
        'Semi_looper',
        'Stink_bug',
        'White_grub'
      ];
      double base_val = widget.value[0];
      int index1 = 0;

      for (int i = 0; i < widget.value.length; i++) {
        if (widget.value[i] > base_val) {
          base_val = widget.value[i];
          index1 = i;
        }
      }

      String text;
      double r = (widget.value[index1] * 255.0);
      double g = (255.0 - (widget.value[index1] * 255.0));
      Color color = Color.fromRGBO(r.toInt(), g.toInt(), r.toInt(), 1.0);

      if (widget.value[index1] <= 0.89) {
        text = "\nUndefined!\n Please capture or load the image again.!";
        content = Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'New Times Roman',
            fontStyle: FontStyle.normal,
            fontSize: 18,
            color: Colors.red, // You can set the text color
          ),
        );
      } else {
        text = className[index1];
        content = ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Details(index: index1)));
          },
          style: ElevatedButton.styleFrom(
            primary: color, // Use the color as the button's background color
            onPrimary: Colors.white, // Text color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0), // Rounded corners
            ),
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'New Times Roman',
              fontStyle: FontStyle.normal,
              fontSize: 16,
            ),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Identification Result:"),
        leading: IconButton(
          icon: Icon(Icons.camera_alt), // Use the camera icon
          onPressed: () {
            // Define the action when the camera button is pressed (e.g., navigate back).
            Navigator.of(context).pop();
          },
        ),
      ),
      body: ListView(
        children: [
          Image.file(File(widget.pathImg)),
          content,
        ],
      ),
    );
  }
}
