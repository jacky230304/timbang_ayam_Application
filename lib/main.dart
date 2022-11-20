import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:timbang_ayam_application/pages/pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Obtain a list of the available cameras on the device.

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Timbang Ayam',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
