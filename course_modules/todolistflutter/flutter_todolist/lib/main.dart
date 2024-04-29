// import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_todolist/utils/routes.dart';
import 'package:flutter_todolist/views/dashboard.dart';
import 'package:get/get.dart';



void main() {
  //HttpOverrides.global = MyHttpOverrides();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'TaskTrove',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        primaryColor: Colors.orange[600], // Light shade of orange

        scaffoldBackgroundColor:
            Colors.orange[100], // Light shade of orange background for pages
        appBarTheme: AppBarTheme(
          color: Colors.orange[900], // Dark shade of orange for app bar
        ),
        textTheme: TextTheme(
          bodyLarge:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          bodyMedium:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          titleLarge:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          // Add more text styles as needed
        ),
      ),
      //initialRoute: ,
      getPages: Routes.routes,
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    );
  }
}
