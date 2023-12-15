import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'package:MaisControl/details.dart';
import 'control_management.dart';
import 'associated_damages.dart';

class Report extends StatefulWidget {
  final String pathImg;
  final List<double> value;
  const Report({Key? key, required this.pathImg, required this.value})
      : super(key: key);

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> with TickerProviderStateMixin {
  late Widget content;
  late Widget det;
  late AnimationController _controller;
  late Animation<double> _animation;

  int index1 = 0;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    _animation = Tween<double>(begin: 0, end: 2).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    )..addListener(() {
        setState(() {});
      });

    _controller.repeat(reverse: true);

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


      for (int i = 0; i < widget.value.length; i++) {
        if (widget.value[i] > base_val) {
          base_val = widget.value[i];
          index1 = i;
        }
      }

      String text1 = '';
      if (widget.value[index1] <= 0.9) {
        content = Text(
          "\nUndefined!\n Please capture or load the image again!",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'New Times Roman',
            fontStyle: FontStyle.normal,
            fontSize: 20,
            color: Colors.red,
          ),
        );
        det = Text(
          "\nThis app is intended for identifying corn pest!\n Please click the camera button again. Thank you!",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'New Times Roman',
            fontStyle: FontStyle.normal,
            fontSize: 20,
            color: Colors.red,
          ),
        );
      } else {
        text1 = 'Click the buttons for further information!';
        det = Text(
          text1,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'New Times Roman',
            fontStyle: FontStyle.normal,
            fontSize: 20,
            color: Colors.white,
          ),
        );
        String text = className[index1];
        content = AnimatedBuilder(
          animation: _animation,
          builder: (BuildContext context, Widget? child) {
            return Transform.translate(
              offset: Offset(0, _animation.value),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Details(index: index1)));
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green, // Change the color if needed
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'New Times Roman',
                    fontStyle: FontStyle.normal,
                    fontSize: 18, // Updated font size here
                  ),
                ),
              ),
            );
          },
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
          icon: Icon(Icons.camera_alt),
          onPressed: () {

            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/back1.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.3), // Change opacity here (0.0 - 1.0)
              BlendMode.darken, // Change blend mode as needed
            ),
          ),
        ),
        child: ListView(
          children: [
            Image.file(File(widget.pathImg)),
            SizedBox(height: 20),
            Transform.translate(
              offset: Offset(0, _animation.value),
              child: content,
            ),
            det,
            SizedBox(height: 20),
            if (widget.value[index1] > 0.9)
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ControlManagementPage(index: index1),
                  ));
                },
                child: Text(
                  'Control Management',
                  style: TextStyle(
                    fontSize: 18, // Updated font size here
                    fontFamily: 'New Times Roman',
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
            if (widget.value[index1] > 0.9)
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => AssociatedDamagesPage(index: index1),
                  ));
                },
                child: Text(
                  'Associated Damages',
                  style: TextStyle(
                    fontSize: 18, // Updated font size here
                    fontFamily: 'New Times Roman',
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
