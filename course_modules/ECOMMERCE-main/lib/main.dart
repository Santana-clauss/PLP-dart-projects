import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopeasy/utils/routes.dart';


void main(){
 
  runApp(GetMaterialApp(
      initialRoute: "/login",
      debugShowCheckedModeBanner: false,
      getPages: Routes.routes
      //home: AddWallets()
      ));
  
}