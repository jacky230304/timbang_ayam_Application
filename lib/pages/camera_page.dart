part of 'pages.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  late CameraController controller;

  Future<void> initializeCamera() async {
    var cameras = await availableCameras();
    final firstCamera = cameras.first;
    controller = CameraController(firstCamera, ResolutionPreset.max);
    await controller.initialize();
  }

  void dispose() {
    controller.dispose();
    super.dispose();
  }

  // late CameraController _controller;
  // late Future<void> _initializeControllerFuture;

  // @override
  // void initState() async {
  //   final cameras = await availableCameras();
  //   final firstCamera = cameras.first;
  //   super.initState();

  //   _controller = CameraController(
  //     // Get a specific camera from the list of available cameras.
  //     firstCamera,
  //     // Define the resolution to use.
  //     ResolutionPreset.medium,
  //   );

  //   // Next, initialize the controller. This returns a Future.
  //   _initializeControllerFuture = _controller.initialize();
  // }

  // void startCamera() async {
  //   cameras = await availableCameras();
  //   cameraController =
  //       CameraController(cameras[0], ResolutionPreset.high, enableAudio: false);
  //   await cameraController.initialize().then((value) {
  //     if (!mounted) {
  //       return;
  //     }
  //     setState(() {});
  //   }).catchError((e) {
  //     print(e);
  //   });
  // }

  // @override
  // void dispose() {
  //   _controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FutureBuilder<void>(
            future: initializeCamera(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                // If the Future is complete, display the preview.
                return CameraPreview(controller);
              } else {
                // Otherwise, display a loading indicator.
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        // Provide an onPressed callback.
        onPressed: () async {
          // Take the Picture in a try / catch block. If anything goes wrong,
          // catch the error.
          try {
            // Ensure that the camera is initialized.
            await initializeCamera();

            // Attempt to take a picture and get the file `image`
            // where it was saved.
            final image = await controller.takePicture();

            if (!mounted) return;

            // If the picture was taken, display it on a new screen.
            await Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DisplayPictureScreen(
                  // Pass the automatically generated path to
                  // the DisplayPictureScreen widget.
                  imagePath: image.path,
                ),
              ),
            );
          } catch (e) {
            // If an error occurs, log the error to the console.
            print(e);
          }
        },
        child: const Icon(Icons.camera_alt),
      ),
    );
  }
}

// A widget that displays the picture taken by the user.
class DisplayPictureScreen extends StatelessWidget {
  final String imagePath;

  const DisplayPictureScreen({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Display the Picture')),
      // The image is stored as a file on the device. Use the `Image.file`
      // constructor with the given path to display the image.
      body: Image.file(File(imagePath)),
    );
  }
}
