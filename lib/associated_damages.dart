import 'package:flutter/material.dart';

class AssociatedDamagesPage extends StatefulWidget {
  final int index;

  const AssociatedDamagesPage({Key? key, required this.index}) : super(key: key);

  @override
  _AssociatedDamagesPageState createState() => _AssociatedDamagesPageState();
}

class _AssociatedDamagesPageState extends State<AssociatedDamagesPage> {
  late Widget assdet;
  late TextStyle customTextStyle; // Declare customTextStyle

  @override
  void initState() {
    super.initState();
    customTextStyle = TextStyle(
      fontSize: 20.0,
      fontFamily: 'YourChosenFont', // Change 'YourChosenFont' to your desired font family
    );

    // Example: Initialize assdet based on the index
    switch (widget.index) {
      case 0:
        {
          assdet = Text('Associated Damages: Army Worm', style: customTextStyle);
          break;
        }
      case 1:
        {
          assdet = Text('Associated Damages: corn borer', style: customTextStyle);
          break;
        }
      case 2:
        {
          assdet = Text('Associated Damages: cut worm', style: customTextStyle);
          break;
        }
      case 3:
        {
          assdet = Text('Associated Damages: ear worm', style: customTextStyle);
          break;
        }
      case 4:
        {
          assdet = Text('Associated Damages: no pest', style: customTextStyle);
          break;
        }
      case 5:
        {
          assdet = Text('Associated Damages: seedling maggot', style: customTextStyle);
          break;
        }
      case 6:
        {
          assdet = Text('Associated Damages: semi looper', style: customTextStyle);
          break;
        }
      case 7:
        {
          assdet = Text('Associated Damages: stink bug', style: customTextStyle);
          break;
        }

      default:
        {
          assdet = Text('Associated Damages: white grub', style: customTextStyle);
        }
    }
  }

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Associated Damages'),
      ),
      backgroundColor: Colors.yellow, // Set the background color here
      body: ListView(
        children: [
          // Use the initialized assdet widget
          Padding(
            padding: EdgeInsets.all(16.0),
            child: assdet,
          ),
        ],
      ),
    );
  }
}