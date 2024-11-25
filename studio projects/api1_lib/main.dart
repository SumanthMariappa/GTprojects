import 'package:api1/Ipify/ipify_test.dart';
import 'package:api1/Jokes/Jokes_test.dart';
import 'package:flutter/material.dart';

import ' Genderize/Genderize_test.dart';
import ' Genderize/adc/abc_test.dart';
import 'IPinfo/ipinfo_test.dart';
import 'Public/Public_test.dart';
import 'agify/agify_test.dart';
import 'coindesk/coindesk_test.dart';
import 'dogs/dogs_test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: abc(),
    );
  }
}
