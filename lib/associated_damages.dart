import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; 

class AssociatedDamagesPage extends StatefulWidget {
  final int index;

  const AssociatedDamagesPage({Key? key, required this.index}) : super(key: key);

  @override
  _AssociatedDamagesPageState createState() => _AssociatedDamagesPageState();
}

class _AssociatedDamagesPageState extends State<AssociatedDamagesPage> {
  late Widget assdet;
  late TextStyle customTextStyle; // Declare customTextStyle

    final TextStyle commonTextStyle = TextStyle(
    color: Colors.white, // Change the text color
    fontSize: 24, // Change the font size
    fontFamily: 'TimesNewRoman', // Change the font family
    fontWeight: FontWeight.bold, // Change the font weight
  );

      final TextStyle commonTextStyle2 = TextStyle(
    color: Colors.white, // Change the text color
    fontSize: 22, // Change the font size
    fontFamily: 'TimesNewRoman', // Change the font family
    fontWeight: FontWeight.normal, // Change the font weight
  );

  @override
  void initState() {
    super.initState();


    // Example: Initialize assdet based on the index
    switch (widget.index) {
      case 0:
        {
          final Image damage = Image.asset('assets/armydamage.png'); 
          assdet = Column(
              children: [
                Text(
                  "\n ARMY WORM",
                  style: commonTextStyle,
                ),
              Text(
                  "\n Associated damages: ", style: commonTextStyle,
                ),
                Text(
                    "    Yellowing of younger leaves and rotting of tissues, Infested show stunted growth. \n", style: commonTextStyle2, ),
                Container(
                  width: 250, // Adjust the width as needed
                  height: 250, // Adjust the height as needed
                  child: damage,
                ),
               ]);
          break;
        }
      case 1:
        {
            final Image damage = Image.asset('assets/borerdam.png');
          assdet = Column(
              children: [
                Text(
                  "\n CORN BORER",
                  style: commonTextStyle,
                ),
               Text(
                  "\n Associated damages: ", style: commonTextStyle,
                ),
               Text(
                    "    Pinholes on leaves a whorl stage, Boring on stalk, base of tassel or ear shank, Broken stalks and clumping of tassels. Partial destruction of cobs, Dropping of ears. White mold formations can be initially observed followed by the dying of leaves and formation of black sooty molds on the plant’s surface resulting in smaller ears. \n", style: commonTextStyle2),
                Container(
                  width: 250, // Adjust the width as needed
                  height: 250, // Adjust the height as needed
                  child: damage,
                ),
               ]);
          break;
        }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
      case 2:
        {
          final Image damage = Image.asset('assets/cutwdam.png'); // Replace with your image path
          assdet = Column(
              children: [
                Text(
                  "\n CUT WORM",
                  style: commonTextStyle,
                ),
                Text(
                  "\n Associated damages: ",style: commonTextStyle,
                ),
                Text(
                    "      Young plants completely defoliated, Cut stem and leaves, Leaves including viens and midribs, almost consumed. \n", style:commonTextStyle2),
                Container(
                  width: 250, // Adjust the width as needed
                  height: 250, // Adjust the height as needed
                  child: damage,
                ),
               ]);
          break;
        }
      case 3:
        {
        final Image damage = Image.asset('assets/earwdam.png');
              assdet = Column(
              children: [
                Text(
                  "\n EAR WORM",
                  style: commonTextStyle,
                ),
                Text(
                  "\n Associated damages: ",style: commonTextStyle,
                ),
                Text(
                    "   Rows of feeding holes(shotholes) on leaves after they unfold at whorl stage, Cut silk and hole opening of ears from sinking to soft dough stage, Granular feces on feeding. ",style:commonTextStyle2),
                Container(
                  width: 250, // Adjust the width as needed
                  height: 250, // Adjust the height as needed
                  child: damage,
                ),
              ]);
          break;
        }
      case 4:
        {
              assdet = Column(
              children: [
                Text(
                  "\n NO PEST",
                  style: commonTextStyle,
                ),
                Text(
                  "\n NO DAMAGE",
                  style: commonTextStyle2,
                ),
              ]);
          break;
        }
      case 5:
        {
          final Image damage = Image.asset('assets/seedmdam.png'); // Replace with your image path
          assdet = Column(
              children: [
          Text(
                  "\n SEEDLING MAGGOT",
                  style: commonTextStyle,
                ),
          Text(
                  "\n Associated damages: ",
                  style: commonTextStyle,
                ),
                Text(
                    "    Yellowing of younger leaves and rotting of tissues, 	Infested seedlings, show stunted growth. ",style:commonTextStyle2),
                Container(
                  width: 250, // Adjust the width as needed
                  height: 250, // Adjust the height as needed
                  child: damage,
                ),   
              ]); 
          break;
        }
      case 6:
        {
          final Image damage = Image.asset('assets/semildam.png'); // Replace with your image path
              assdet = Column(
              children: [
          Text(
                  "\n SEMI LOOPER",
                  style: commonTextStyle,
                ),
          Text(
                  "\n Associated damages: ",
                  style: commonTextStyle,
                ),
                Text(
                    "    Leaf blades of younger plants eaten up with only the midrib and parallel viens left. Corn silk cut. ",style: commonTextStyle2),
                Container(
                  width: 250, // Adjust the width as needed
                  height: 250, // Adjust the height as needed
                  child: damage,
                ),
              ]); 
          break;
        }
      case 7:
        {
            final Image damage = Image.asset('assets/sbugsdam.png'); // Replace with your image path
            assdet = Column(
              children: [
                Text(
                  "\n STINKS BUG",
                  style: commonTextStyle,
                ),
                Text(
                  "\n Associated damages: ",
                  style: commonTextStyle,
                ),
                Text(
                    "    Damage the crop directly by feeding on fruit. Early season feeding results in dimples or irregularly depressed areas on mature fruit. If the feeding occurs after maturity there is little external evidence other than excrement, which appears as small, brown, tear-shaped drops. ",style:commonTextStyle2),
                Container(
                  width: 250, // Adjust the width as needed
                  height: 250, // Adjust the height as needed
                  child: damage,
                ),
                ]);
          break;
        }

      default:
        {
            final Image damage = Image.asset('assets/wgrubdam.png'); 
            assdet = Column(
              children: [
                Text(
                  "\n WHITE GRUB",
                  style: commonTextStyle,
                ),
            Text(
                  "\n Associated damages: ",
                  style: commonTextStyle,
                ),
                Text(
                    "    Plant stunted and discolored at margin of affected area, May go beyond tasseling stage during heavy infestation. ",style:commonTextStyle2,),
                Container(
                  width: 250, // Adjust the width as needed
                  height: 250, // Adjust the height as needed
                  child: damage,
                ),
             ]);
        }
    }
  }


@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Associated Damages'),
    ),
    backgroundColor: Colors.transparent, // Set the background color to transparent
    body: Stack(
      fit: StackFit.expand,
      children: [
        // Background image
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/back3.jpg'), // Replace with your image path
              fit: BoxFit.cover, // Make the image cover the entire screen
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.3), // Adjust the opacity here
                BlendMode.dstATop, // Choose the blend mode as needed
              ),
            ),
          ),
        ),
        ListView(
          children: [
            // Use the initialized assdet widget
            Padding(
              padding: EdgeInsets.all(16.0),
              child: assdet,
            ),
          ],
        ),
      ],
    ),
  );
}
}