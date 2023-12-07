
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:tflite_flutter/tflite_flutter.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:image/image.dart' as img;
import 'package:MaisControl/report.dart';
import 'package:MaisControl/IntroPanel.dart'; // Replace this with your actual import path

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();
  runApp(MyApp(cameras: cameras));
}

class MyApp extends StatelessWidget {
  final List<CameraDescription> cameras;
  const MyApp({Key? key, required this.cameras}) : super(key: key);
  @override
  Widget build(context) {
    return MaterialApp(
      title: 'Identify Pest',
      theme: ThemeData(primarySwatch: Colors.green),
      routes: {
        '/intro': (context) => IntroPanel(), // Replace this with your IntroPanel route
        '/main': (context) => HomePage(
          cameras: cameras,
        ),
      },
      initialRoute: '/intro',
    );
  }
}

class HomePage extends StatefulWidget {
  final List<CameraDescription> cameras;
  const HomePage({Key? key, required this.cameras}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late CameraController camController;
  late Future<void> initControlerFuture;
  late Interpreter interpreter;
  List<double> value = List<double>.filled(4, 0);
  String combinedText = "Capture";
  late String imagePath;

  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    camController = CameraController(
      widget.cameras[0],
      ResolutionPreset.veryHigh,
    );
    initControlerFuture = camController.initialize();

    loadModel();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );

    _scaleAnimation = Tween<double>(begin: 1, end: 0.95).animate(_controller);
  }

  @override
  void dispose() {
    interpreter.close();
    camController.dispose();
    _controller.dispose();
    super.dispose();
  }

  loadModel() async {
    try {
      interpreter = await Interpreter.fromAsset('assets/model.tflite');
    } catch (e) {}
  }

  Future<void> captureImage() async {
    try {
      final image = await camController.takePicture();
      imagePath = image.path;
      await predict(image.path);
    } catch (e) {
      debugPrint('error: $e');
    }
  }

  Future<void> pickImage() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(
        source: ImageSource
            .gallery); // You can also use ImageSource.camera to open the camera.
    final path = pickedImage!.path;
    imagePath = path;
    await predict(path);
  }

  Future<void> predict(String path) async {
    final bytes = await File(path).readAsBytes();
    final img.Image? capturedImage = img.decodeImage(bytes);

    if (capturedImage != null) {
      interpreter.allocateTensors();
      final scaledImage =
          img.copyResize(capturedImage, width: 256, height: 256);

      final imageMatrix = List.generate(
        scaledImage.height,
        (y) => List.generate(
          scaledImage.width,
          (x) {
            final pixel = scaledImage.getPixel(x, y);
            return [pixel.r / 255.0, pixel.g / 255.0, pixel.b / 255.0];
          },
        ),
      );

      final input = [imageMatrix];
      final output = [List<double>.filled(9, 0)];
      interpreter.run(input, output);
      setState(() {
        value = output.first;
        combinedText = "";
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
        for (int i = 0; i < value.length; i++) {
          combinedText += "${className[i]} : ${value[i]}\n";
        }
      });
    }
  }



@override
Widget build(BuildContext context) {
  double scrWidth = MediaQuery.of(context).size.width;
  double scrHeight = MediaQuery.of(context).size.height;
  return Scaffold(
    appBar: AppBar(
      title: const Text('Identify Pest'),
      centerTitle: true,
    ),
    body: FutureBuilder<void>(
      future: initControlerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Stack(
            children: [
              SizedBox(
                width: scrWidth,
                height: scrHeight,
                child: AspectRatio(
                  aspectRatio: camController.value.aspectRatio,
                  child: CameraPreview(camController),
                ),
              ),
              Positioned(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        AnimatedBuilder(
                          animation: _scaleAnimation,
                          builder: (context, child) {
                            return Transform.scale(
                              scale: _scaleAnimation.value,
                              child: ElevatedButton(
                                onPressed: () {
                                  _controller.forward().then((value) {
                                    _controller.reverse();
                                    captureImage().then((value) {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Report(
                                            pathImg: imagePath,
                                            value: this.value,
                                          ),
                                        ),
                                      );
                                    });
                                  });
                                },
                                child: const Text(
                                  'Capture',
                                  style: TextStyle(fontSize: 16), // Font size adjustment
                                ),
                                style: ElevatedButton.styleFrom(
                                  fixedSize: Size(120, 40), // Set the desired button size
                                ),
                              ),
                            );
                          },
                        ),
                        AnimatedBuilder(
                          animation: _scaleAnimation,
                          builder: (context, child) {
                            return Transform.scale(
                              scale: _scaleAnimation.value,
                              child: ElevatedButton(
                                onPressed: () {
                                  _controller.forward().then((value) {
                                    _controller.reverse();
                                    pickImage().then((value) {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Report(
                                            pathImg: imagePath,
                                            value: this.value,
                                          ),
                                        ),
                                      );
                                    });
                                  });
                                },
                                child: const Text(
                                  'Gallery',
                                  style: TextStyle(fontSize: 16), // Font size adjustment
                                ),
                                style: ElevatedButton.styleFrom(
                                  fixedSize: Size(120, 40), // Set the desired button size
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    ),
  );
}
}
