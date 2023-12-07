import 'package:flutter/material.dart';

class ControlManagementPage extends StatefulWidget {
  final int index;

  const ControlManagementPage({Key? key, required this.index}) : super(key: key);

  @override
  _ControlManagementPageState createState() => _ControlManagementPageState();
}
  
class _ControlManagementPageState extends State<ControlManagementPage> {
  late Widget condet;
  late TextStyle customTextStyle; // Add this line

  @override
  void initState() {
    super.initState();
    customTextStyle = TextStyle(fontSize: 20.0); // Define font size here

    // Initialize condet based on the index
    switch(widget.index) {
      case 0: {
        condet = Text('Control Management: Army Worm', style: customTextStyle);
        break;
      }
      case 1: {
        condet = Text('Control Management: corn borer', style: customTextStyle);
        break;
      }
      case 2: {
        condet = Text('Control Management: cut worm', style: customTextStyle);
        break;
      }
      case 3: {
        condet = Text('Control Management: ear worm', style: customTextStyle);
        break;
      }
      case 4: {
        condet = Text('Control Management: no pest', style: customTextStyle);
        break;
      }
      case 5: {
        condet = Text('Control Management: seedling maggot', style: customTextStyle);
        break;
      }
      case 6: {
        condet = Text('Control Management: semi looper', style: customTextStyle);
        break;
      }
      case 7: {
        condet = Text('Control Management: stink bug', style: customTextStyle);
        break;
      }
      
      default: {
        condet = Text('Control Management: white grub', style: customTextStyle);
      }
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Control Management:'),
      ),
      backgroundColor: Colors.yellow,
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: condet,
          ),
        ],
      ),
    );
  }
}