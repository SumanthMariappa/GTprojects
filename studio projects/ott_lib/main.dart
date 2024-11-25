import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ott/profile%20page.dart';
import 'package:ott/video.dart';

import 'package:video_player/video_player.dart';
import 'package:ott/signup.dart';
import 'package:ott/splash%20screen.dart';
import 'package:flick_video_player/flick_video_player.dart';

import 'bottomNavigation.dart';
import 'boys.dart';
import 'homepage.dart';
import 'login.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyCEWOoXN5pTt_4lCFv7f1pBMCGecOEf4u8",
        authDomain: "project-ott-ec78e.firebaseapp.com",
        projectId: "project-ott-ec78e",
        storageBucket: "project-ott-ec78e.appspot.com",
        messagingSenderId: "974802735275",
        appId: "1:974802735275:web:ac2092f0455978140667ee",
        measurementId: "G-TJK1JTHQ40"
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}





