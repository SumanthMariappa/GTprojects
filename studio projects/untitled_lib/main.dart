import 'package:flutter/material.dart';
import 'package:untitled/demo.dart';
import 'package:untitled/demo2.dart';
import 'package:untitled/demo3.dart';
import 'package:untitled/imagepage.dart';
import 'package:untitled/imagepage1.dart';
import 'package:untitled/profile.dart';
import 'package:untitled/sample.dart';
import 'package:untitled/validimg.dart';
import 'package:untitled/validtion.sample.dart';
import 'package:untitled/validtion1.dart';
import 'package:untitled/validtion2.dart';
import 'package:untitled/visibility.dart';

import 'Amazon.dart';
import 'Vdemo1.dart';
import 'amazonpge1.dart';
import 'insta 2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const page1(),
    );
  }
}


