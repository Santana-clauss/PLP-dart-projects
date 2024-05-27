// ignore_for_file: prefer_const_constructors



import 'package:get/get.dart';
import 'package:shopeasy/screens/home.dart';
import 'package:shopeasy/screens/login.dart';

class Routes{
  static var routes=[
    GetPage(name: "/home", page: () => MyHomePage()),
    GetPage(name: "/login", page:()=>LoginScreen()),
   
   
    
  ];
}