

import 'package:flutter_todolist/views/dashboard.dart';
import 'package:flutter_todolist/views/nav.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class Routes {
  static var routes = [
   
    GetPage(name: "/home", page: () => Dashboard()),
    GetPage(name: "/dashboard", page:()=> Dashboard()),
    GetPage(name: "/login", page: () => Navigation_Bar()),
    
  ];
}
