import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: DashboardPage(),
    ),
  );
}