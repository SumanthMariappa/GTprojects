import 'package:api_list1/post_api/category.dart';
import 'package:api_list1/post_api/client.dart';
import 'package:api_list1/post_api/client_edit.dart';
import 'package:api_list1/post_api/client_edit1.dart';
import 'package:flutter/material.dart';

import 'Data/data.dart';
import 'Nationalize/Nationalize_test.dart';
import 'fakestoreapi_ott/Amazon.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:postapi(),
    );
  }
}
