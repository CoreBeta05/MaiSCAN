import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ControlManagementPage extends StatefulWidget {
  final int index;

  const ControlManagementPage({Key? key, required this.index}) : super(key: key);

  @override
  _ControlManagementPageState createState() => _ControlManagementPageState();
}

class _ControlManagementPageState extends State<ControlManagementPage> {
  late Widget condet;
  late TextStyle customTextStyle;

  final TextStyle commonTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 22,
    fontFamily: 'TimesNewRoman',
    fontWeight: FontWeight.bold,
  );

  final TextStyle commonTextStyle2 = TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontFamily: 'TimesNewRoman',
    fontWeight: FontWeight.normal,
  );

  @override
  void initState() {
    super.initState();


    // Initialize condet based on the index
    switch(widget.index) {
      case 0: {
        condet= Column(
              children: [
                Text(
                  "\n ARMY WORM",
                  style: commonTextStyle,
                ),
                Text(
                  "\n Control Management: \n",
                  style: commonTextStyle,
                ),
                Text(
                  "\n Video link below!"
                  , style: commonTextStyle2,
                ),
                GestureDetector(
                  onTap: () {
                    const url =
                        'https://youtu.be/1zfb8Wpl86k?si=naCWYAzWkRaLFLbW'; // Replace with your website URL
                    launch(url);
                  },
                  child: Text(
                    'a. Collect and crush egg masses and larvae if possible.\nb. Employ chemical control only if there is an outbreak using pyrethroid or triazophos insecticides. ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue, // Change the text color to blue
                    ),
                  ),
                ),
               ]);
        break;
      }
      case 1: {
        condet= Column(
              children: [
                Text(
                  "\n CORN BORER",
                  style: commonTextStyle,
                ),
                Text(
                  "\n Control Management:",
                  style: commonTextStyle,
                ),
                Text(
                  "\n Video link below!"
                  , style: commonTextStyle2,
                ),
                GestureDetector(
                  onTap: () {
                    const url =
                        'https://youtu.be/D641V8WHfgo?si=pwhb23uCsX923C5w'; // Replace with your website URL
                    launch(url);
                  },
                  child: Text(
                    'a. Practice synchoronous planting in contiguous area.',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue, // Change the text color to blue
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    const url =
                        'https://youtu.be/_L2G99eoKHA?si=l7g73VTb_mtc_sTn'; // Replace with your website URL
                    launch(url);
                  },
                  child: Text(
                    'b. Detassel clumped tassels one or two days after tassel emergence or detassel three out of four corn plant rows.',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue, // Change the text color to blue
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    const url =
                        'https://youtu.be/C_8DiLnCGw4?si=hJpefLdJxs_QXpMu'; // Replace with your website URL
                    launch(url);
                  },
                  child: Text(
                    'c. Pick and crash the eggs of mashes and larvae manually.',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue, // Change the text color to blue
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    const url =
                        'https://youtu.be/dFSHi-nQjPk?si=bKzDmNI4q0R-7SDP'; // Replace with your website URL
                    launch(url);
                  },
                  child: Text(
                    'd. Apply trichograma parasitoids 33 to 35 days after planting or after hilling up at three to four days interval.',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue, // Change the text color to blue
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    const url =
                        'https://youtu.be/RRXRMUAXkk0?si=yBZTTwD-A1mN3qgY'; // Replace with your website URL
                    launch(url);
                  },
                  child: Text(
                    'e. Crop rotation coupled with weeds removal.',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue, // Change the text color to blue
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    const url =
                        'https://youtu.be/dcVxj7J6VjI?si=Ex7VcA8ufJZ_fQbW'; // Replace with your website URL
                    launch(url);
                  },
                  child: Text(
                    'f. Deploy 10,000 to 20,000 earwigs per hectare 20 to 35 days after emergence of pest. ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue, // Change the text color to blue
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    const url =
                        'https://youtu.be/5s-3ga91NX8?si=fuoNXg976y748rLv'; // Replace with your website URL
                    launch(url);
                  },
                  child: Text(
                    'g. Apply granular insecticide (Carbofuran) into the plant whorl 30-35 days after emergence in case of severe infestation.',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue, // Change the text color to blue
                    ),
                  ),
                ),
               ]);
        break;
      }
      case 2: {
        condet= Column(
              children: [
                Text(
                  "\n CUT WORM",
                  style: commonTextStyle,
                ),
                Text(
                  "\n Control Management: \n",
                  style: commonTextStyle,
                ),
                Text(
                  "\n Video link below!"
                  , style: commonTextStyle2,
                ),
                GestureDetector(
                  onTap: () {
                    const url =
                        'https://youtube.com/shorts/-TI6VDcFOfo?si=7SuIKeM_euGiXgqz'; // Replace with your website URL
                    launch(url);
                  },
                  child: Text(
                    'a. Plow fields to remove weeds which may serve as alternate hosts.',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue, // Change the text color to blue
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    const url =
                        'https://youtu.be/Rlt9NftKTjA?si=KUzn30xvFLSDdZVn'; // Replace with your website URL
                    launch(url);
                  },
                  child: Text(
                    'b. Handpick eggs and larvae cut worm',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue, // Change the text color to blue
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    const url =
                        'https://youtu.be/0xXT9lHGXLk?si=QNnF7bK0QC7_sgen'; // Replace with your website URL
                    launch(url);
                  },
                  child: Text(
                    'c. make small trenches around the field and fill with cut grasses in the morning. these will serve as shade where the larvae can hide during the day to avoid the heat of the sun. the hiding larvae\n can then be collected in the early morning of the next day. ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue, // Change the text color to blue
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    const url =
                        'https://youtu.be/uOD41sIYYcw?si=gX5uHeHE2G0yTUyO'; // Replace with your website URL
                    launch(url);
                  },
                  child: Text(
                    'd. Chemical spraying using pyrethroids can be done during severe infestation. ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue, // Change the text color to blue
                    ),
                  ),
                ),
               ]);
        break;
      }
      case 3: {
        condet= Column(
              children: [
                Text(
                  "\n EAR WORM",
                  style: commonTextStyle,
                ),
                Text(
                  "\n Control Management: \n",
                  style: commonTextStyle,
                ),
                Text(
                  "\n Video link below!"
                  , style: commonTextStyle2,
                ),
                GestureDetector(
                  onTap: () {
                    const url =
                        'https://youtu.be/wlcu-Jol4YA?si=EPEJcCJBp8vaTM7-'; // Replace with your website URL
                    launch(url);
                  },
                  child: Text(
                    'a. Use plant resistant varieties with long and tight ear husks,',
                    style: TextStyle(
                      fontSize:20,
                      color: Colors.blue, // Change the text color to blue
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    const url =
                        'https://youtu.be/SDW3a4jZ8kw?si=N67X9t7CxcC93LnB'; // Replace with your website URL
                    launch(url);
                  },
                  child: Text(
                    'b. Plant marigold around the field as trap crop.',
                    style: TextStyle(
                      fontSize:20,
                      color: Colors.blue, // Change the text color to blue
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    const url =
                        'https://youtu.be/i7r96MRix2I?si=FD_t_ZJVsaIZ6oqs'; // Replace with your website URL
                    launch(url);
                  },
                  child: Text(
                    'c. Install pheromone traps to capture the pest. Both sexes are captured in light traps whereas only males are attracted to the sex pheromone, Both trap types give an estimate when moths invade or emerge, but pheromone traps are easier to use because they are selective. The pheromone is usually used in conjunction with an in verted cone-type trap.',
                    style: TextStyle(
                      fontSize:20,
                      color: Colors.blue, // Change the text color to blue
                    ),
                  ),
                ),
               ]);
        break;
      }
      case 4: {
        condet= Column(
              children: [
                Text(
                  "\n NO PEST",
                  style: commonTextStyle,
                ),
                Text(
                  "\n Video link below!"
                  , style: commonTextStyle2,
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
                      fontSize:20,
                      color: Colors.blue, // Change the text color to blue
                      decoration:
                      TextDecoration.underline, // Add underline to the text
                    ),
                  ),
                ),
              ]);
        break;
      }
      case 5: {
        condet= Column(
              children: [
                Text(
                  "\n SEEDLING MAGGOT",
                  style: commonTextStyle,
                ),
                Text(
                  "\n Control Management: \n",
                  style: commonTextStyle,
                ),
                Text(
                  "\n Video link below!"
                  , style: commonTextStyle2,
                ),
                GestureDetector(
                  onTap: () {
                    const url =
                        'https://youtu.be/D641V8WHfgo?si=pwhb23uCsX923C5w'; // Replace with your website URL
                    launch(url);
                  },
                  child: Text(
                    'a. Practice synchoronous planting in contiguous area.',
                    style: TextStyle(
                      fontSize:20,
                      color: Colors.blue, // Change the text color to blue
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    const url =
                        'https://youtu.be/p5mPonCbMVg?si=WuNVYQe0ompYKplK'; // Replace with your website URL
                    launch(url);
                  },
                  child: Text(
                    'b. Plant early to escape high maggot population.',
                    style: TextStyle(
                      fontSize:20,
                      color: Colors.blue, // Change the text color to blue
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    const url =
                        'https://youtu.be/HahDjm9H0eY?si=IEF1wooUIZoccW4K'; // Replace with your website URL
                    launch(url);
                  },
                  child: Text(
                    'c. Use decomposed organic matter.',
                    style: TextStyle(
                      fontSize:20,
                      color: Colors.blue, // Change the text color to blue
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    const url =
                        'https://youtu.be/Yds6XiC1n-E?si=H6cSrbKbzzTzr6X8'; // Replace with your website URL
                    launch(url);
                  },
                  child: Text(
                    'd. Treat seed with thiodicarb or carbofuran before planting.',
                    style: TextStyle(
                      fontSize:20,
                      color: Colors.blue, // Change the text color to blue
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    const url =
                        'https://youtu.be/0nqq_NYyY6w?si=7hMJElGkQG2V6fRp'; // Replace with your website URL
                    launch(url);
                  },
                  child: Text(
                    'e. Replanting is the only available management option since there are no rescue treatments for control of seedcorn maggot. The decision to replant should be based on the remaining\n healthy plant population, the date, yield expectation, etc. If replting is done before June, a seed treatment and/or soil\n insecticide may be advisable. Seed corn maggot adults are being infested by fungal pathogens as temperature and humidity rises during the summer. A large number of infected flies are found dead and clinging to crops. weeds, etc.',
                    style: TextStyle(
                      fontSize:20,
                      color: Colors.blue, // Change the text color to blue
                    ),
                  ),
                ),
              ]);
        break;
      }
      case 6: {
              condet= Column(
              children: [
                Text(
                  "\n SEMI LOOPER",
                  style: commonTextStyle,
                ),
        Text(
                  "\n Control Management:",
                  style: commonTextStyle,
                ),
                Text(
                  "\n Video link below!"
                  , style: commonTextStyle2,
                ),
                GestureDetector(
                  onTap: () {
                    const url =
                        'https://youtu.be/D641V8WHfgo?si=pwhb23uCsX923C5w'; // Replace with your website URL
                    launch(url);
                  },
                  child: Text(
                    'a. Practice synchoronous planting in contiguous area.',
                    style: TextStyle(
                      fontSize:20,
                      color: Colors.blue, // Change the text color to blue
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    const url =
                        'https://youtube.com/shorts/SGsC53RzJNc?si=uybf0y6lkiveuF8I'; // Replace with your website URL
                    launch(url);
                  },
                  child: Text(
                    'b. Handpicking is often sufficient to control the insect. for semi looper',
                    style: TextStyle(
                      fontSize:20,
                      color: Colors.blue, // Change the text color to blue
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    const url =
                        'https://youtu.be/tw7wTXy1yRE?si=tYw-M8Vysp05zElm'; // Replace with your website URL
                    launch(url);
                  },
                  child: Text(
                    'c. Timely weed control. corn',
                    style: TextStyle(
                      fontSize:20,
                      color: Colors.blue, // Change the text color to blue
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    const url =
                        'https://youtu.be/uvgYYya-uP8?si=YCfJ39NvxYc5B-qR'; // Replace with your website URL
                    launch(url);
                  },
                  child: Text(
                    'd. Use of BT Corn Hybrids as planting materials',
                    style: TextStyle(
                      fontSize:20,
                      color: Colors.blue, // Change the text color to blue
                    ),
                  ),
                ),
              ]);
        break;
      }
      case 7: {
            condet= Column(
              children: [
                Text(
                  "\n STINK BUGS",
                  style: commonTextStyle,
                ),
        Text(
                  "\n Control Management:",
                  style: commonTextStyle,
                ),
                Text(
                  "\n Video link below!"
                  , style: commonTextStyle2,
                ),
                GestureDetector(
                  onTap: () {
                    const url =
                        'https://youtu.be/jtnI6HZiiao?si=zDSjgqE7E8kKdP-P'; // Replace with your website URL
                    launch(url);
                  },
                  child: Text(
                    'a. Insecticide control. Many insecticides in the pyrethroid class are\n effective for brown stink bug in corn. However, bifenthrin is the most\n effective both because it can be applied at a rate that contains\n more active ingredient than other pyrethroids and because it is\n more toxic to brown stink bugs. Expect only a week residual.',
                    style: TextStyle(
                      fontSize:20,
                      color: Colors.blue, // Change the text color to blue
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    const url =
                        'https://youtu.be/7-TBYyRpI7w?si=xcAIxOVXAsM9JOMU'; // Replace with your website URL
                    launch(url);
                  },
                  child: Text(
                    'b. Light trapping.',
                    style: TextStyle(
                      fontSize:20,
                      color: Colors.blue, // Change the text color to blue
                    ),
                  ),
                ),
              ]);
        break;
      }
      
      default: {
              condet= Column(
              children: [
                Text(
                  "\n WHITE GRUB",
                  style: commonTextStyle,
                ),
        Text(
                  "\n Control Management:",
                  style: commonTextStyle,
                ),
                Text(
                  "\n Video link below!"
                  , style: commonTextStyle2,
                ),
                GestureDetector(
                  onTap: () {
                    const url =
                        'https://youtu.be/EsochGgRPmE?si=IYE3AJ8381nRAH2S'; // Replace with your website URL
                    launch(url);
                  },
                  child: Text(
                    'a. Prepare land thoroughly before planting.',
                    style: TextStyle(
                      fontSize:20,
                      color: Colors.blue, // Change the text color to blue
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    const url =
                        'https://youtu.be/t7F4X3idewA?si=a6S-xjTtT3AEiweu'; // Replace with your website URL
                    launch(url);
                  },
                  child: Text(
                    'b. Practice deep plowing in areas with chronic white grub infestation.',
                    style: TextStyle(
                      fontSize:20,
                      color: Colors.blue, // Change the text color to blue
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    const url =
                        'https://youtu.be/Yqf5EghQGF8?si=fkeMJI9vFHelaRs2'; // Replace with your website URL
                    launch(url);
                  },
                  child: Text(
                    'c. Incorporate corn stubbles and stalks in the soil during plowing.\n These will serve as alternate food for the white grubs instead of\n the corn roots.',
                    style: TextStyle(
                      fontSize:20,
                      color: Colors.blue, // Change the text color to blue
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    const url =
                        'https://youtu.be/1DI-g07_Bsg?si=tqSXmuDpcBV9vmEp'; // Replace with your website URL
                    launch(url);
                  },
                  child: Text(
                    'd. Practice chemical treatment during severe infestation only.',
                    style: TextStyle(
                      fontSize:20,
                      color: Colors.blue, // Change the text color to blue
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    const url =
                        'https://youtu.be/CvCXQgLhCm4?si=ooFSRl_0EZ8-eZ1A'; // Replace with your website URL
                    launch(url);
                  },
                  child: Text(
                    'e. Some cultural control techniques such as crop rotation,\n weed control, mid-season plowing, and pasturing hogs on infested\n fields may provide partial control of white grubs.',
                    style: TextStyle(
                      fontSize:20,
                      color: Colors.blue, // Change the text color to blue
                    ),
                  ),
                ),
            ]);
      }
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Control Management:'),
      ),
      backgroundColor: Colors.transparent, // Set scaffold's background to transparent
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/back3.jpg'), // Replace with your image asset path
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.3), // Adjust the opacity here (0.0 to 1.0)
              BlendMode.darken,
            ),
          ),
        ),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: condet,
            ),
          ],
        ),
      ),
    );
  }
}