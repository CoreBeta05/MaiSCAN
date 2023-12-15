import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Import the url_launcher package

class Details extends StatefulWidget {
  final int index;

  const Details({Key? key, required this.index}) : super(key: key);

  @override
  State createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Details> {
  late Widget info;

  final TextStyle commonTextStyle = TextStyle(
    color: Colors.white, // Change the text color
    fontSize: 18, // Change the font size
    fontFamily: 'TimesNewRoman', // Change the font family
    fontWeight: FontWeight.bold, // Change the font weight
  );

  final TextStyle commonTextStyle2 = TextStyle(
    color: Colors.white, // Change the text color
    fontSize: 18, // Change the font size
    fontFamily: 'TimesNewRoman', // Change the font family
    fontWeight: FontWeight.normal, // Change the font weight
  );

  @override
  void initState() {
    super.initState();
    setState(() {
      switch (widget.index) {
        case 0:
          {
            // Load the image using AssetImage
            final Image image = Image.asset('assets/aworm.png');
            String pestDetails = '';
            info = Column(
              children: [
                Text(
                  "\n ARMY WORM(Spodoptera exempta-Black, Spodoptera\n maurita-Grass)\n Local Names: Arabas, Ulod sa humay/anogba, Balulo.",
                  style: commonTextStyle,
                ),
                
                Text(
                    "\n       Armyworms mostly feed on leaves, but under certain circumstances will feed on the seed stem, resulting in head loss. The change in feeding habit is caused by depletion of green leaf material or crowding. In the unusual event of extreme food depletion and crowding, they will march out of crops and pastures in search of food, which gives them the name armyworm.\n", 
                  style: commonTextStyle2,
                  ),
                // Display the image
                Container(
                  width: 250, // Adjust the width as needed
                  height: 250, // Adjust the height as needed
                  child: image,
                ),
                Text(
                    "\n References: Regional Crop Protection Center Caraga                      ",style:commonTextStyle2,),
                GestureDetector(
                  onTap: () {
                    const url =
                        'https://car.da.gov.ph/2023/06/01/common-insect-pest-and-diseases-of-corn/'; // Replace with your website URL
                    launch(url);
                  },
                  child: Text(
                    'Department of Agriculture. Common Insect Pest and Diseases of\n Corn. ',
                    style: TextStyle(
                      color: Colors.blue, // Change the text color to blue
                      decoration:
                          TextDecoration.underline, // Add underline to the text
                    ),
                  ),
                ),
              ],
            );
          }
          break;
        case 1:
          {
            // Load the image using AssetImage
            final Image image = Image.asset('assets/cborer.png');

            info = Column(
              children: [
                Text(
                  "\n ASIATIC CORN BORER(Ostrinia furnacalis guenee)\n Local Name: Dalipog, Gitakit, Tuhod, Tamasok, Tigpoy,\n Amasok, Ulad. ",
                  style: commonTextStyle,
                ),
                Text(
                    "\n      Adults have an average wingspan of about 25 mm (1 inch). The forewings of both genders have dark wavy lines. Eggs of European corn borer are scaly and glossy white in appearance and are laid in masses of 15 to 30 eggs.\n", 
                  style: commonTextStyle2,
                  ),
                // Display the image
                Container(
                  width: 250, // Adjust the width as needed
                  height: 250, // Adjust the height as needed
                  child: image,
                ),
                Text(
                    "\n References: Regional Crop Protection Center Caraga                      ",style:commonTextStyle2,),
                GestureDetector(
                  onTap: () {
                    const url =
                        'https://car.da.gov.ph/2023/06/01/common-insect-pest-and-diseases-of-corn/'; // Replace with your website URL
                    launch(url);
                  },
                  child: Text(
                    'Department of Agriculture. Common Insect Pest and Diseases of\n Corn. ',
                    style: TextStyle(
                      color: Colors.blue, // Change the text color to blue
                      fontSize: 18,
                      decoration:
                          TextDecoration.underline, // Add underline to the text
                    ),
                  ),
                ),
              ],
            );
          } 

          break;
        case 2:
          {
            final Image image = Image.asset('assets/cutw.png');

            info = Column(
              children: [
                Text(
                  "\n COMMON CUT WORM(Spodoptera litura Fabricious)\n Local Names: Arabas, Ulod.",
                  style: commonTextStyle,
                ),
                Text(
                    "\n      Cutworms normally feed close to the soil surface, clipping off seedlings or chewing leaves that touch the ground. Uncommonly, cutworms bore into cabbage heads. Most feeding occurs at night; during the day cutworms are usually found just below the soil surface or under dirt clods.\n", 
                  style: commonTextStyle2,
                  ),
                // Display the image
                Container(
                  width: 250, // Adjust the width as needed
                  height: 250, // Adjust the height as needed
                  child: image,
                ),

                Text(
                    " References: Regional Crop Protection Center Caraga                      ",style:commonTextStyle2,),
                GestureDetector(
                  onTap: () {
                    const url =
                        'https://car.da.gov.ph/2023/06/01/common-insect-pest-and-diseases-of-corn/'; // Replace with your website URL
                    launch(url);
                  },
                  child: Text(
                    'Department of Agriculture. Common Insect Pest and Diseases of\n Corn. ',
                    style: TextStyle(
                      color: Colors.blue, // Change the text color to blue
                      fontSize:18,
                      decoration:
                          TextDecoration.underline, // Add underline to the text
                    ),
                  ),
                ),
              ],
            );
          }
          break;
        case 3:
          {
            // Load the image using AssetImage
            final Image image = Image.asset('assets/earw.png');

            info = Column(
              children: [
                Text(
                  "\n CORN EAR WORM(Helicoverpa armigera)\n Local Names: Ulod sa puso.",
                  style: commonTextStyle,
                ),
                Text(
                    "\n      Corn earworm moths are most active during evening and night. They are about 0.75 inch long, rather robust, with a wing span of 1 to 1.5 inches, and adults range from olive green, to tan, to dark reddish brown in color. Egg laying occurs throughout the sweet corn growing season. The tiny, white eggs are laid singly on the foliage and fresh corn silk, which is the favorite site for egg deposition. After about a day, eggs develop a reddish brown ring in the top portion. Eggs are spherical with 12 or more ridges radiating from the top.\n", 
                  style: commonTextStyle2,
                  ),
                // Display the image
                Container(
                  width: 250, // Adjust the width as needed
                  height: 250, // Adjust the height as needed
                  child: image,
                ),
                Text( " References: Regional Crop Protection Center Caraga                      ", style:commonTextStyle2,),
                GestureDetector(
                  onTap: () {
                    const url =
                        'https://car.da.gov.ph/2023/06/01/common-insect-pest-and-diseases-of-corn/'; // Replace with your website URL
                    launch(url);
                  },
                  child: Text(
                    'Department of Agriculture. Common Insect Pest and Diseases of\n Corn. ',
                    style: TextStyle(
                      color: Colors.blue, // Change the text color to blue
                      fontSize:18,
                      decoration:
                          TextDecoration.underline, // Add underline to the text
                    ),
                  ),
                ),
              ],
            );
          }
          break;
        case 4:
          {
            // Load the image using AssetImage
            final Image image = Image.asset('assets/nopest.png');
            info = Column(
              children: [
                Text(
                  "\n NO PEST",
                  style: commonTextStyle,
                ),
                Text(" Good job! Maintain your healthy corn. \n", style:commonTextStyle2,),
                // Display the image
                Container(
                  width: 250, // Adjust the width as needed
                  height: 250, // Adjust the height as needed
                  child: image,
                ),
                GestureDetector(
                  onTap: () {
                    const url =
                        'https://youtu.be/AUzMt1wkQI4?si=O1nhRh8iNfm7vqGv'; // Replace with your website URL
                    launch(url);
                  },
                  child: Text(
                    '\nHow to maintain healthy corn?',
                    style: TextStyle(
                      color: Colors.blue, // Change the text color to blue
                      fontSize:18,
                      decoration:
                          TextDecoration.underline, // Add underline to the text
                    ),
                  ),
                ),
              ],
            );
          }
          break;
        case 5:
          {
            // Load the image using AssetImage
            final Image image = Image.asset('assets/seedm.png');
            final Image damage = Image.asset(
                'assets/seedmdam.png'); // Replace with your image path
            info = Column(
              children: [
                Text(
                  "\n SEEDLING MAGGOT(Atherigona oryzae malloch)\n Local Names: Bangaw.",
                  style: commonTextStyle,
                ),
                Text(
                    "\n      The seedcorn maggot adult is a slender, light gray fly, about 0.2 inch long; it is less robust appearing than the housefly. The whitish eggs are slightly curved with their posterior bluntly rounded. Mature larvae range from 0.2 to 0.25 inch in length, are white to whitish yellow, cylindrical, and taper anteriorly.\n", 
                  style: commonTextStyle2,
                  ),
                // Display the image
                Container(
                  width: 250, // Adjust the width as needed
                  height: 250, // Adjust the height as needed
                  child: image,
                ),
                
                Text(
                    " References: Regional Crop Protection Center Caraga                      ",style:commonTextStyle2,),
                GestureDetector(
                  onTap: () {
                    const url =
                        'https://car.da.gov.ph/2023/06/01/common-insect-pest-and-diseases-of-corn/'; // Replace with your website URL
                    launch(url);
                  },
                  child: Text(
                    'Department of Agriculture. Common Insect Pest and Diseases of\n Corn. ',
                    style: TextStyle(
                      color: Colors.blue, // Change the text color to blue
                      fontSize:18,
                      decoration:
                          TextDecoration.underline, // Add underline to the text
                    ),
                  ),
                ),
              ],
            );
          }
          break;
        case 6:
          {
            // Load the image using AssetImage
            final Image image = Image.asset('assets/semil.png');
            final Image damage = Image.asset(
                'assets/semildam.png'); // Replace with your image path
            info = Column(
              children: [
                Text(
                  "\n SEMI LOOPER(Chrysodeixis chalcitis)\n Local Names: Dangan-dangan, Dangaw-dangaw.",
                  style: commonTextStyle,
                ),
                Text(
                    "\n      All stages of the crop can be attacked by semi-looper. Larvae feed on the underside of the leaves creating small holes which may lead to complete defoliation of the crops.\n", 
                  style: commonTextStyle2,
                  ),
                // Display the image
                Container(
                  width: 250, // Adjust the width as needed
                  height: 250, // Adjust the height as needed
                  child: image,
                ),

                Text(
                    " References: Regional Crop Protection Center Caraga                      ",style:commonTextStyle2),
                GestureDetector(
                  onTap: () {
                    const url =
                        'https://car.da.gov.ph/2023/06/01/common-insect-pest-and-diseases-of-corn/'; // Replace with your website URL
                    launch(url);
                  },
                  child: Text(
                    'Department of Agriculture. Common Insect Pest and Diseases of\n Corn. ',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize:18, // Change the text color to blue
                      decoration:
                          TextDecoration.underline, // Add underline to the text
                    ),
                  ),
                ),
              ],
            );
          }
          break;
        case 7:
          {
            // Load the image using AssetImage
            final Image image = Image.asset('assets/sbugs.png');

            info = Column(
              children: [
                Text(
                  "\n STINK BUG(Halyomorpha halys)\n Local Names: Pijangaw.",
                  style: commonTextStyle,
                ),
                Text(
                    "     Adult brown marmorated stink bugs are approximately 1.7 cm (0.67 in) long and about as wide, forming the heraldic shield shape characteristic of bugs in the superfamily Pentatomoidea. They are generally a dark brown when viewed from above, with a creamy white-brown underside",style:commonTextStyle2,),
                // Display the image
                Container(
                  width: 250, // Adjust the width as neededLeaf blades of younger
                  height: 250, // Adjust the height as needed
                  child: image,
                ),
                Text(

                    " References: Regional Crop Protection Center Caraga                      ",style:commonTextStyle2,),
                GestureDetector(
                  onTap: () {
                    const url =
                        'https://car.da.gov.ph/2023/06/01/common-insect-pest-and-diseases-of-corn/'; // Replace with your website URL
                    launch(url);
                  },
                  child: Text(
                    'Department of Agriculture. Common Insect Pest and Diseases of\n Corn. ',
                    style: TextStyle(
                      color: Colors.blue, // Change the text color to blue
                      fontSize:18,
                      decoration:
                          TextDecoration.underline, // Add underline to the text
                    ),
                  ),
                ),
              ],
            );
          }
          break;
        default:
          {
            // Load the image using AssetImage
            final Image image = Image.asset('assets/wgrub.png');
            
            info = Column(
              children: [
                Text(
                  "\n WHITE GRUB(Leucopholis irrota L.)\n Local names: Salagubang, Buod, Bakukang.",
                  style: commonTextStyle,
                ),
                Text(
                    "     White grubs are the larval stage of scarab beetles and chafers. They feed on the roots of grasses and can be found in the top couple inches of soil. The body is creamy white with a reddish-brown head, and they have three pairs of legs on the thorax. They may reach nearly one inch long.",style:commonTextStyle2,),
                // Display the image
                Container(
                  width: 250, // Adjust the width as needed
                  height: 250, // Adjust the height as needed
                  child: image,
                ),

                Text(
                    " References: Regional Crop Protection Center Caraga                      ", style:commonTextStyle2,),
                GestureDetector(
                  onTap: () {
                    const url =
                        'https://car.da.gov.ph/2023/06/01/common-insect-pest-and-diseases-of-corn/'; // Replace with your website URL
                    launch(url);
                  },
                  child: Text(
                    'Department of Agriculture. Common Insect Pest and Diseases of\n Corn. ',
                    style: TextStyle(
                      color: Colors.blue, // Change the text color to blue
                      fontSize:18,
                      decoration:
                          TextDecoration.underline, // Add underline to the text
                    ),
                  ),
                ),
              ],
            );
          }
          break;
      }
  });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Control Management:'),
      ),
      backgroundColor: Colors.transparent, // Set background color to transparent
      body: Stack(
        children: [
          Positioned.fill(
            child: Opacity(
              opacity: 0.3, // Change opacity here (0.0 to 1.0)
              child: Image.asset(
                'assets/back3.jpg', // Replace with your image path
                fit: BoxFit.cover, // Ensure the image covers the whole screen
              ),
            ),
          ),
          ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: info,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
