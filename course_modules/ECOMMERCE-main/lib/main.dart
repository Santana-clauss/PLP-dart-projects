import 'package:flutter/material.dart';
import 'package:shopeasy/views/screens/dashboard.dart';

void main(){
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      debugShowCheckedModeBanner:false,
      home: DashboardPage(),
    ),
  );
}