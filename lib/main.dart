// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shopeasy/screens/dashboard.dart';
import 'package:shopeasy/screens/home.dart';
import 'package:shopeasy/screens/testing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopeasy',
      theme: ThemeData(
        //primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.orange[100], 
      ),
      debugShowCheckedModeBanner: false,
      home: TestingPage(),
    );
  }
}

