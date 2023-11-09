import 'package:flutter/material.dart';
import 'dart:io';
import 'package:MaisControl/details.dart';
import 'package:url_launcher/url_launcher.dart'; // Import the url_launcher package

class details extends StatefulWidget {
  final int index;
  
  const details({super.key, required this.index});
  @override
  State createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<details> {
  late Widget info;
  
    final TextStyle commonTextStyle = TextStyle(
    color: Colors.black, // Change the text color
    fontSize: 18, // Change the font size
    fontFamily: 'TimesNewRoman', // Change the font family
    fontWeight: FontWeight.bold, // Change the font weight
  );

  @override
  void initState(){
    super.initState();
    setState((){
            List<String> className = [
            'Army_worm',
            'Corn_borer',
            'Corn_Hopper',
            'Cut_worm',
            'Ear_worm',
            'No_pest',
            'Seedling_maggot',
            'Semi_looper',
            'Stink_bugs',
            'White_grub'
      ];
      switch(widget.index){
        case 0:{
    // Load the image using AssetImage
         final Image image = Image.asset('assets/aworm.png'); 
         final Image damage = Image.asset('assets/armydamage.png');// Replace with your image path
            info = Column(
             children: [
       Text(
        "\n ARMY WORM(Spodoptera exempta-Black, Spodoptera\n maurita-Grass)\n Local Names: Arabas, Ulod sa humay/anogba, Balulo.",
        style: commonTextStyle,
      ),
      // Display the image
      Container(
        width: 250, // Adjust the width as needed
        height: 250, // Adjust the height as needed
        child: image,
      ),
      Text("\n Control Management:",
        style: commonTextStyle,
      ),

      GestureDetector(
  onTap: () {
    const url = 'https://youtu.be/1zfb8Wpl86k?si=naCWYAzWkRaLFLbW'; // Replace with your website URL
    launch(url);
  },
  child: Text(
    'a. Collect and crush egg masses and larvae if possible.\nb. Employ chemical control only if there is an outbreak using pyrethroid or\n triazophos insecticides. ',
    style: TextStyle(
      color: Colors.blue, // Change the text color to blue
    ),
  ),
),
      Text("\n Associated damages: ",
        style: commonTextStyle,
      ),
      Text(" Yellowing of younger leaves and rotting of tissues, Infested show stunted\n growth. \n"),
            Container(
        width: 250, // Adjust the width as needed
        height: 250, // Adjust the height as needed
        child: damage,
        ),
      Text("\n References: Regional Crop Protection Center Caraga                      "),
              GestureDetector(
  onTap: () {
    const url = 'https://car.da.gov.ph/2023/06/01/common-insect-pest-and-diseases-of-corn/'; // Replace with your website URL
    launch(url);
  },
  child: Text(
    'Department of Agriculture. Common Insect Pest and Diseases of\n Corn. ',
    style: TextStyle(
      color: Colors.blue, // Change the text color to blue
      decoration: TextDecoration.underline, // Add underline to the text
    ),
  ),
),
    ],
  );
        }
        break;
        case 1:{
    // Load the image using AssetImage
         final Image image = Image.asset('assets/cborer.png'); 
         final Image damage = Image.asset('assets/borerdam.png');// Replace with your image path
            info = Column(
             children: [
       Text(
        "\n ASIATIC CORN BORER(Ostrinia furnacalis guenee)\n Local Name: Dalipog, Gitakit, Tuhod, Tamasok, Tigpoy,\n Amasok, Ulad. ",
        style: commonTextStyle,
      ),
      // Display the image
      Container(
        width: 250, // Adjust the width as needed
        height: 250, // Adjust the height as needed
        child: image,
      ),
      Text("\n Control Management:",
        style: commonTextStyle,
      ),
      GestureDetector(
  onTap: () {
    const url = 'https://youtu.be/D641V8WHfgo?si=pwhb23uCsX923C5w'; // Replace with your website URL
    launch(url);
  },
  child: Text(
    'a. Practice synchoronous planting in contiguous area.',
    style: TextStyle(
      color: Colors.blue, // Change the text color to blue
    ),
  ),
),
      GestureDetector(
  onTap: () {
    const url = 'https://youtu.be/_L2G99eoKHA?si=l7g73VTb_mtc_sTn'; // Replace with your website URL
    launch(url);
  },
  child: Text(
    'b. Detassel clumped tassels one or two days after tassel\n emergence or detassel three out of four corn plant rows.',
    style: TextStyle(
      color: Colors.blue, // Change the text color to blue
    ),
  ),
),
      GestureDetector(
  onTap: () {
    const url = 'https://youtu.be/C_8DiLnCGw4?si=hJpefLdJxs_QXpMu'; // Replace with your website URL
    launch(url);
  },
  child: Text(
    'c. Pick and crash the eggs of mashes and larvae manually.',
    style: TextStyle(
      color: Colors.blue, // Change the text color to blue
    ),
  ),
),
      GestureDetector(
  onTap: () {
    const url = 'https://youtu.be/dFSHi-nQjPk?si=bKzDmNI4q0R-7SDP'; // Replace with your website URL
    launch(url);
  },
  child: Text(
    'd. Apply trichograma parasitoids 33 to 35 days after planting\n or after hilling up at three to four days interval.',
    style: TextStyle(
      color: Colors.blue, // Change the text color to blue
    ),
  ),
),
      GestureDetector(
  onTap: () {
    const url = 'https://youtu.be/RRXRMUAXkk0?si=yBZTTwD-A1mN3qgY'; // Replace with your website URL
    launch(url);
  },
  child: Text(
    'e. Crop rotation coupled with weeds removal.',
    style: TextStyle(
      color: Colors.blue, // Change the text color to blue
    ),
  ),
),
      GestureDetector(
  onTap: () {
    const url = 'https://youtu.be/dcVxj7J6VjI?si=Ex7VcA8ufJZ_fQbW'; // Replace with your website URL
    launch(url);
  },
  child: Text(
    'f. Deploy 10,000 to 20,000 earwigs per hectare\n 20 to 35 days after emergence of pest. ',
    style: TextStyle(
      color: Colors.blue, // Change the text color to blue
    ),
  ),
),
      GestureDetector(
  onTap: () {
    const url = 'https://youtu.be/5s-3ga91NX8?si=fuoNXg976y748rLv'; // Replace with your website URL
    launch(url);
  },
  child: Text(
    'g. Apply granular insecticide (Carbofuran) into the plant whorl\n 30-35 days after emergence in case of severe infestation.',
    style: TextStyle(
      color: Colors.blue, // Change the text color to blue
    ),
  ),
),
      Text("\n Associated damages: ",
        style: commonTextStyle,
      ),
      const Text("    Pinholes on leaves a whorl stage, Boring on stalk, base of tassel or ear\n shank, Broken stalks and clumping of tassels. Partial destruction of cobs,\n Dropping of ears. White mold formations can be initially observed followed\n by the dying of leaves and formation of black sooty molds on the plant’s\n surface resulting in smaller ears. \n"),
            Container(
        width: 250, // Adjust the width as needed
        height: 250, // Adjust the height as needed
        child: damage,
        ),
      Text(" References: Regional Crop Protection Center Caraga                      "),
      GestureDetector(
  onTap: () {
    const url = 'https://car.da.gov.ph/2023/06/01/common-insect-pest-and-diseases-of-corn/'; // Replace with your website URL
    launch(url);
  },
  child: Text(
    'Department of Agriculture. Common Insect Pest and Diseases of\n Corn. ',
    style: TextStyle(
      color: Colors.blue, // Change the text color to blue
      decoration: TextDecoration.underline, // Add underline to the text
    ),
  ),
),
    ],
  );
        }
        break;
        case 2:{
    // Load the image using AssetImage
         final Image image = Image.asset('assets/cornh.png'); 
         final Image damage = Image.asset('assets/cornhdam.png');// Replace with your image path
            info = Column(
             children: [
       Text(
        "\n CORN HOPPER(Stenocranus pacificu)\n Local Names: Sip-sip, Bunhok.",
        style: commonTextStyle,
      ),
      // Display the image
      Container(
        width: 250, // Adjust the width as needed
        height: 250, // Adjust the height as needed
        child: image,
      ),
      Text("\n Control Management:",
        style: commonTextStyle,
      ),
      Text("a. Eliminate weeds which serve as alternate hosts of the corn plant hopper.\n b. If Irrigation is available, regular irrigation can help replenish the corn sap sucked by the corn plant hopper.\n c. Increase planting distance to facilitate light penetration within the micro- environment of the crop.\n d. Follow recommended fertilizer application and split application of Nitrogen fertilizer.\n e. Practice fallow period of 2-3 months if crop rotation is not possible to break the life cycle of the plant hoppers.\n f. Plow under corn stubbles or plant debris immediately after harvest to kill remaining eggs, nymphs and adults. \n"),
      Text("\n Associated damages: ",
        style: commonTextStyle,
      ),
      Text("They stock plant juices from young leaves and leaf sheaths which can lead to stunted plant growth in severe cases, The formation of droplets of honeydews in leaves and thier toxins may cause galls among the viens and undereath leaf surface that resulted in lose of plant vigor. "),
            Container(
        width: 250, // Adjust the width as needed
        height: 250, // Adjust the height as needed
        child: damage,
        ),
      Text(" References: Regional Crop Protection Center Caraga                      "),
      GestureDetector(
  onTap: () {
    const url = 'https://car.da.gov.ph/2023/06/01/common-insect-pest-and-diseases-of-corn/'; // Replace with your website URL
    launch(url);
  },
  child: Text(
    'Department of Agriculture. Common Insect Pest and Diseases of\n Corn. ',
    style: TextStyle(
      color: Colors.blue, // Change the text color to blue
      decoration: TextDecoration.underline, // Add underline to the text
    ),
  ),
),
    ],
  );
        }
        break;
        case 3:{
    // Load the image using AssetImage
         final Image image = Image.asset('assets/cutw.png'); 
         final Image damage = Image.asset('assets/cutwdam.png');// Replace with your image path
            info = Column(
             children: [
       Text(
        "\n COMMON CUT WORM(Spodoptera litura Fabricious)\n Local Names: Arabas, Ulod.",
        style: commonTextStyle,
      ),
      // Display the image
      Container(
        width: 250, // Adjust the width as needed
        height: 250, // Adjust the height as needed
        child: image,
      ),
      Text("\n Control Management:",
        style: commonTextStyle,
      ),
       GestureDetector(
  onTap: () {
    const url = 'https://youtube.com/shorts/-TI6VDcFOfo?si=7SuIKeM_euGiXgqz'; // Replace with your website URL
    launch(url);
  },
  child: Text(
    'a. Plow fields to remove weeds which may serve as alternate hosts.',
    style: TextStyle(
      color: Colors.blue, // Change the text color to blue
    ),
  ),
), 
       GestureDetector(
  onTap: () {
    const url = 'https://youtu.be/Rlt9NftKTjA?si=KUzn30xvFLSDdZVn'; // Replace with your website URL
    launch(url);
  },
  child: Text(
    'b. Handpick eggs and larvae cut worm',
    style: TextStyle(
      color: Colors.blue, // Change the text color to blue
    ),
  ),
), 
      GestureDetector(
  onTap: () {
    const url = 'https://youtu.be/0xXT9lHGXLk?si=QNnF7bK0QC7_sgen'; // Replace with your website URL
    launch(url);
  },
  child: Text(
    'c. make small trenches around the field and fill with cut grasses\n in the morning. these will serve as shade where the larvae can hide\n during the day to avoid the heat of the sun. the hiding larvae\n can then be collected in the early morning of the next day. ',
    style: TextStyle(
      color: Colors.blue, // Change the text color to blue
    ),
  ),
), 
      GestureDetector(
  onTap: () {
    const url = 'https://youtu.be/uOD41sIYYcw?si=gX5uHeHE2G0yTUyO'; // Replace with your website URL
    launch(url);
  },
  child: Text(
    'd. Chemical spraying using pyrethroids can be done during severe\n infestation. ',
    style: TextStyle(
      color: Colors.blue, // Change the text color to blue
    ),
  ),
), 
      Text("\n Associated damages: ",
        style: commonTextStyle,
      ),
      Text(" Young plants completely defoliated, Cut stem and leaves, Leaves\n including viens and midribs, almost consumed. \n"),
            Container(
        width: 250, // Adjust the width as needed
        height: 250, // Adjust the height as needed
        child: damage,
        ),
      Text(" References: Regional Crop Protection Center Caraga                      "),
      GestureDetector(
  onTap: () {
    const url = 'https://car.da.gov.ph/2023/06/01/common-insect-pest-and-diseases-of-corn/'; // Replace with your website URL
    launch(url);
  },
  child: Text(
    'Department of Agriculture. Common Insect Pest and Diseases of\n Corn. ',
    style: TextStyle(
      color: Colors.blue, // Change the text color to blue
      decoration: TextDecoration.underline, // Add underline to the text
    ),
  ),
),
    ],
  );
        }
        break;
        case 4:{
    // Load the image using AssetImage
         final Image image = Image.asset('assets/earw.png'); 
         final Image damage = Image.asset('assets/earwdam.png');// Replace with your image path
            info = Column(
             children: [
       Text(
        "\n CORN EAR WORM(Helicoverpa armigera)\n Local Names: Ulod sa puso.",
        style: commonTextStyle,
      ),
      // Display the image
      Container(
        width: 250, // Adjust the width as needed
        height: 250, // Adjust the height as needed
        child: image,
      ),
      Text("\n Control Management:",
        style: commonTextStyle,
      ),
      GestureDetector(
  onTap: () {
    const url = 'https://youtu.be/wlcu-Jol4YA?si=EPEJcCJBp8vaTM7-'; // Replace with your website URL
    launch(url);
  },
  child: Text(
    'a. Use plant resistant varieties with long and tight ear husks,',
    style: TextStyle(
      color: Colors.blue, // Change the text color to blue
    ),
  ),
),
      GestureDetector(
  onTap: () {
    const url = 'https://youtu.be/SDW3a4jZ8kw?si=N67X9t7CxcC93LnB'; // Replace with your website URL
    launch(url);
  },
  child: Text(
    'b. Plant marigold around the field as trap crop.',
    style: TextStyle(
      color: Colors.blue, // Change the text color to blue
    ),
  ),
),
      GestureDetector(
  onTap: () {
    const url = 'https://youtu.be/i7r96MRix2I?si=FD_t_ZJVsaIZ6oqs'; // Replace with your website URL
    launch(url);
  },
  child: Text(
    'c. Install pheromone traps to capture the pest. Both sexes\n are captured in light traps whereas only males are attracted\n to the sex pheromone, Both trap types give an estimate\n when moths invade or emerge, but pheromone traps are easier\n to use because they are selective. The pheromone is usually\n used in conjunction with an in verted cone-type trap.',
    style: TextStyle(
      color: Colors.blue, // Change the text color to blue
    ),
  ),
),

      Text("\n Associated damages: ",
        style: commonTextStyle,
      ),
      Text("   Rows of feeding holes(shotholes) on leaves after they unfold at whorl\n stage, Cut silk and hole opening of ears from sinking to soft dough stage,\n Granular feces on feeding. "),
            Container(
        width: 250, // Adjust the width as needed
        height: 250, // Adjust the height as needed
        child: damage,
        ),
      Text(" References: Regional Crop Protection Center Caraga                      "),
      GestureDetector(
  onTap: () {
    const url = 'https://car.da.gov.ph/2023/06/01/common-insect-pest-and-diseases-of-corn/'; // Replace with your website URL
    launch(url);
  },
  child: Text(
    'Department of Agriculture. Common Insect Pest and Diseases of\n Corn. ',
    style: TextStyle(
      color: Colors.blue, // Change the text color to blue
      decoration: TextDecoration.underline, // Add underline to the text
    ),
  ),
),
    ],
  );
        }
        break;
        case 5:{
    // Load the image using AssetImage
         final Image image = Image.asset('assets/nopest.png'); 
            info = Column(
             children: [
       Text(
        "\n NO PEST",
        style: commonTextStyle,
      ),
      Text(" Good job! Maintain your healthy corn. \n"),
      // Display the image
      Container(
        width: 250, // Adjust the width as needed
        height: 250, // Adjust the height as needed
        child: image,
      ),
            GestureDetector(
  onTap: () {
    const url = 'https://youtu.be/AUzMt1wkQI4?si=O1nhRh8iNfm7vqGv'; // Replace with your website URL
    launch(url);
  },
  child: Text(
    '\nHow to maintain healthy corn?',
    style: TextStyle(
      color: Colors.blue, // Change the text color to blue
      decoration: TextDecoration.underline, // Add underline to the text
    ),
  ),
),
    ],
  );
        }
        break;        
        case 6:{
    // Load the image using AssetImage
         final Image image = Image.asset('assets/seedm.png'); 
         final Image damage = Image.asset('assets/seedmdam.png');// Replace with your image path
            info = Column(
             children: [
       Text(
        "\n SEEDLING MAGGOT(Atherigona oryzae malloch)\n Local Names: Bangaw.",
        style: commonTextStyle,
      ),
      // Display the image
      Container(
        width: 250, // Adjust the width as needed
        height: 250, // Adjust the height as needed
        child: image,
      ),
      Text("\n Control Management:",
        style: commonTextStyle,
      ),
        GestureDetector(
  onTap: () {
    const url = 'https://youtu.be/D641V8WHfgo?si=pwhb23uCsX923C5w'; // Replace with your website URL
    launch(url);
  },
  child: Text(
    'a. Practice synchoronous planting in contiguous area.',
    style: TextStyle(
      color: Colors.blue, // Change the text color to blue
    ),
  ),
),
        GestureDetector(
  onTap: () {
    const url = 'https://youtu.be/p5mPonCbMVg?si=WuNVYQe0ompYKplK'; // Replace with your website URL
    launch(url);
  },
  child: Text(
    'b. Plant early to escape high maggot population.',
    style: TextStyle(
      color: Colors.blue, // Change the text color to blue
    ),
  ),
),
        GestureDetector(
  onTap: () {
    const url = 'https://youtu.be/HahDjm9H0eY?si=IEF1wooUIZoccW4K'; // Replace with your website URL
    launch(url);
  },
  child: Text(
    'c. Use decomposed organic matter.',
    style: TextStyle(
      color: Colors.blue, // Change the text color to blue
    ),
  ),
),
        GestureDetector(
  onTap: () {
    const url = 'https://youtu.be/Yds6XiC1n-E?si=H6cSrbKbzzTzr6X8'; // Replace with your website URL
    launch(url);
  },
  child: Text(
    'd. Treat seed with thiodicarb or carbofuran before planting.',
    style: TextStyle(
      color: Colors.blue, // Change the text color to blue
    ),
  ),
),
        GestureDetector(
  onTap: () {
    const url = 'https://youtu.be/0nqq_NYyY6w?si=7hMJElGkQG2V6fRp'; // Replace with your website URL
    launch(url);
  },
  child: Text(
    'e. Replanting is the only available management option since\n there are no rescue treatments for control of seedcorn maggot.\n The decision to replant should be based on the remaining\n healthy plant population, the date, yield expectation, etc.\n If replting is done before June, a seed treatment and/or soil\n insecticide may be advisable. Seed corn maggot adults are\n being infested by fungal pathogens as temperature and humidity\n rises during the summer. A large number of infected flies are found\n dead and clinging to crops. weeds, etc.',
    style: TextStyle(
      color: Colors.blue, // Change the text color to blue
    ),
  ),
),
      Text("\n Associated damages: ",
        style: commonTextStyle,
      ),
      Text("    Yellowing of younger leaves and rotting of tissues, 	Infested seedlings,\n show stunted growth. "),
            Container(
        width: 250, // Adjust the width as needed
        height: 250, // Adjust the height as needed
        child: damage,
        ),
      Text(" References: Regional Crop Protection Center Caraga                      "),
      GestureDetector(
  onTap: () {
    const url = 'https://car.da.gov.ph/2023/06/01/common-insect-pest-and-diseases-of-corn/'; // Replace with your website URL
    launch(url);
  },
  child: Text(
    'Department of Agriculture. Common Insect Pest and Diseases of\n Corn. ',
    style: TextStyle(
      color: Colors.blue, // Change the text color to blue
      decoration: TextDecoration.underline, // Add underline to the text
    ),
  ),
),
    ],
  );
        }
        break;
        case 7:{
    // Load the image using AssetImage
         final Image image = Image.asset('assets/semil.png'); 
         final Image damage = Image.asset('assets/semildam.png');// Replace with your image path
            info = Column(
             children: [
       Text(
        "\n SEMI LOOPER(Chrysodeixis chalcitis)\n Local Names: Dangan-dangan, Dangaw-dangaw.",
        style: commonTextStyle,
      ),
      // Display the image
      Container(
        width: 250, // Adjust the width as needed
        height: 250, // Adjust the height as needed
        child: image,
      ),
      Text("\n Control Management:",
        style: commonTextStyle,
      ),
        GestureDetector(
  onTap: () {
    const url = 'https://youtu.be/D641V8WHfgo?si=pwhb23uCsX923C5w'; // Replace with your website URL
    launch(url);
  },
  child: Text(
    'a. Practice synchoronous planting in contiguous area.',
    style: TextStyle(
      color: Colors.blue, // Change the text color to blue
    ),
  ),
),
        GestureDetector(
  onTap: () {
    const url = 'https://youtube.com/shorts/SGsC53RzJNc?si=uybf0y6lkiveuF8I'; // Replace with your website URL
    launch(url);
  },
  child: Text(
    'b. Handpicking is often sufficient to control the insect. for semi looper',
    style: TextStyle(
      color: Colors.blue, // Change the text color to blue
    ),
  ),
),
        GestureDetector(
  onTap: () {
    const url = 'https://youtu.be/tw7wTXy1yRE?si=tYw-M8Vysp05zElm'; // Replace with your website URL
    launch(url);
  },
  child: Text(
    'c. Timely weed control. corn',
    style: TextStyle(
      color: Colors.blue, // Change the text color to blue
    ),
  ),
),
        GestureDetector(
  onTap: () {
    const url = 'https://youtu.be/uvgYYya-uP8?si=YCfJ39NvxYc5B-qR'; // Replace with your website URL
    launch(url);
  },
  child: Text(
    'd. Use of BT Corn Hybrids as planting materials',
    style: TextStyle(
      color: Colors.blue, // Change the text color to blue
    ),
  ),
),
      Text("\n Associated damages: ",
        style: commonTextStyle,
      ),
      Text("    Leaf blades of younger plants eaten up with only the midrib and\n parallel viens left. Corn silk cut. "),
            Container(
        width: 250, // Adjust the width as needed
        height: 250, // Adjust the height as needed
        child: damage,
        ),
      Text(" References: Regional Crop Protection Center Caraga                      "),
      GestureDetector(
  onTap: () {
    const url = 'https://car.da.gov.ph/2023/06/01/common-insect-pest-and-diseases-of-corn/'; // Replace with your website URL
    launch(url);
  },
  child: Text(
    'Department of Agriculture. Common Insect Pest and Diseases of\n Corn. ',
    style: TextStyle(
      color: Colors.blue, // Change the text color to blue
      decoration: TextDecoration.underline, // Add underline to the text
    ),
  ),
),
    ],
  );
        }
        break;
        case 8:{
    // Load the image using AssetImage
         final Image image = Image.asset('assets/sbugs.png'); 
         final Image damage = Image.asset('assets/sbugsdam.png');// Replace with your image path
            info = Column(
             children: [
       Text(
        "\n STINK BUGS(Halyomorpha halys)\n Local Names: Pijangaw.",
        style: commonTextStyle,
      ),
      // Display the image
      Container(
        width: 250, // Adjust the width as needed
        height: 250, // Adjust the height as needed
        child: image,
      ),
      Text("\n Control Management:",
        style: commonTextStyle,
      ),
        GestureDetector(
  onTap: () {
    const url = 'https://youtu.be/jtnI6HZiiao?si=zDSjgqE7E8kKdP-P'; // Replace with your website URL
    launch(url);
  },
  child: Text(
    'a. Insecticide control. Many insecticides in the pyrethroid class are\n effective for brown stink bug in corn. However, bifenthrin is the most\n effective both because it can be applied at a rate that contains\n more active ingredient than other pyrethroids and because it is\n more toxic to brown stink bugs. Expect only a week residual.',
    style: TextStyle(
      color: Colors.blue, // Change the text color to blue
    ),
  ),
),
        GestureDetector(
  onTap: () {
    const url = 'https://youtu.be/7-TBYyRpI7w?si=xcAIxOVXAsM9JOMU'; // Replace with your website URL
    launch(url);
  },
  child: Text(
    'b. Light trapping.',
    style: TextStyle(
      color: Colors.blue, // Change the text color to blue
    ),
  ),
),
      Text("\n Associated damages: ",
        style: commonTextStyle,
      ),
      Text("    Damage the crop directly by feeding on fruit. Early season feeding\n results in dimples or irregularly depressed areas on mature fruit. If the\n feeding occurs after maturity there is little external evidence other than\n excrement, which appears as small, brown, tear-shaped drops. "),
            Container(
        width: 250, // Adjust the width as needed
        height: 250, // Adjust the height as needed
        child: damage,
        ),
      Text(" References: Regional Crop Protection Center Caraga                      "),
      GestureDetector(
  onTap: () {
    const url = 'https://car.da.gov.ph/2023/06/01/common-insect-pest-and-diseases-of-corn/'; // Replace with your website URL
    launch(url);
  },
  child: Text(
    'Department of Agriculture. Common Insect Pest and Diseases of\n Corn. ',
    style: TextStyle(
      color: Colors.blue, // Change the text color to blue
      decoration: TextDecoration.underline, // Add underline to the text
    ),
  ),
),
    ],
  );
        }
        break;
        default:{
    // Load the image using AssetImage
         final Image image = Image.asset('assets/wgrub.png'); 
         final Image damage = Image.asset('assets/wgrubdam.png');// Replace with your image path
            info = Column(
             children: [
       Text(
        "\n WHITE GRUB(Leucopholis irrota L.)\n Local names: Salagubang, Buod, Bakukang.",
        style: commonTextStyle,
      ),
      // Display the image
      Container(
        width: 250, // Adjust the width as needed
        height: 250, // Adjust the height as needed
        child: image,
      ),
      Text("\n Control Management:",
        style: commonTextStyle,
      ),
        GestureDetector(
  onTap: () {
    const url = 'https://youtu.be/EsochGgRPmE?si=IYE3AJ8381nRAH2S'; // Replace with your website URL
    launch(url);
  },
  child: Text(
    'a. Prepare land thoroughly before planting.',
    style: TextStyle(
      color: Colors.blue, // Change the text color to blue
    ),
  ),
),
        GestureDetector(
  onTap: () {
    const url = 'https://youtu.be/t7F4X3idewA?si=a6S-xjTtT3AEiweu'; // Replace with your website URL
    launch(url);
  },
  child: Text(
    'b. Practice deep plowing in areas with chronic white grub infestation.',
    style: TextStyle(
      color: Colors.blue, // Change the text color to blue
    ),
  ),
),
        GestureDetector(
  onTap: () {
    const url = 'https://youtu.be/Yqf5EghQGF8?si=fkeMJI9vFHelaRs2'; // Replace with your website URL
    launch(url);
  },
  child: Text(
    'c. Incorporate corn stubbles and stalks in the soil during plowing.\n These will serve as alternate food for the white grubs instead of\n the corn roots.',
    style: TextStyle(
      color: Colors.blue, // Change the text color to blue
    ),
  ),
),
        GestureDetector(
  onTap: () {
    const url = 'https://youtu.be/1DI-g07_Bsg?si=tqSXmuDpcBV9vmEp'; // Replace with your website URL
    launch(url);
  },
  child: Text(
    'd. Practice chemical treatment during severe infestation only.',
    style: TextStyle(
      color: Colors.blue, // Change the text color to blue
    ),
  ),
),
        GestureDetector(
  onTap: () {
    const url = 'https://youtu.be/CvCXQgLhCm4?si=ooFSRl_0EZ8-eZ1A'; // Replace with your website URL
    launch(url);
  },
  child: Text(
    'e. Some cultural control techniques such as crop rotation,\n weed control, mid-season plowing, and pasturing hogs on infested\n fields may provide partial control of white grubs.',
    style: TextStyle(
      color: Colors.blue, // Change the text color to blue
    ),
  ),
),
      Text("\n Associated damages: ",
        style: commonTextStyle,
      ),
      Text("    Plant stunted and discolored at margin of affected area, May go\n beyond tasseling stage during heavy infestation. "),
            Container(
        width: 250, // Adjust the width as needed
        height: 250, // Adjust the height as needed
        child: damage,
        ),
      Text(" References: Regional Crop Protection Center Caraga                      "),
      GestureDetector(
  onTap: () {
    const url = 'https://car.da.gov.ph/2023/06/01/common-insect-pest-and-diseases-of-corn/'; // Replace with your website URL
    launch(url);
  },
  child: Text(
    'Department of Agriculture. Common Insect Pest and Diseases of\n Corn. ',
    style: TextStyle(
      color: Colors.blue, // Change the text color to blue
      decoration: TextDecoration.underline, // Add underline to the text
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
      body: ListView(
        children: [
          info,
        ]
      ),
    );
  }
}