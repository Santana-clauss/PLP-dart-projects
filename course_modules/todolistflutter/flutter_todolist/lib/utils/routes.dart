

// ignore_for_file: prefer_const_constructors
import 'package:flutter_todolist/views/dashboard.dart';
import 'package:flutter_todolist/views/screens/profile.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class Routes {
  static var routes = [
   
    GetPage(name: "/home", page: () => Dashboard()),
    GetPage(name: "/dashboard", page:()=> Dashboard()),
    GetPage(name: "/profile", page: () => ProfilePage()),
    //GetPage(name: "/login", page: () => Navigation_Bar()),
    
  ];
}
