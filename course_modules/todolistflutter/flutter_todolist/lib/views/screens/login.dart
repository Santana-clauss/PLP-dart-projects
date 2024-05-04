// ignore_for_file: unused_local_variable, must_be_immutable, avoid_print, prefer_const_constructors

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_todolist/config/constant.dart';
import 'package:flutter_todolist/views/custombutton.dart';
import 'package:flutter_todolist/views/customtext.dart';
import 'package:flutter_todolist/views/customtextfield.dart';

import 'package:get/get.dart';

import 'package:http/http.dart' as http;

final TextEditingController phoneController = TextEditingController();
final TextEditingController passwordController = TextEditingController();
//LoginController loginController = Get.put(LoginController());
//preferences myPref = preferences();
//Prefs myPref = Prefs();
//var store = GetStorage();

class LoginScreen extends StatelessWidget {
  bool isLogged = false;
  bool isRememberMe = false;
  //final Prefs _prefs = Prefs();
  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //myPref.getString("phone").then((value) => {phoneController.text = value.toString()});

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/background.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                SizedBox(height: 20),
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.transparent,
                  child: ClipOval(
                    child: Image.asset(
                      'images/logow.jpg',
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(height: 20),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white.withOpacity(0.74),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              customtitleText(label: "phone"),
                              customTextField(
                                userFieldController: phoneController,
                                icon: Icons.phone,
                              ),
                              customtitleText(label: "Password"),
                              customTextField(
                                userFieldController: passwordController,
                                hint: "Password",
                                icon: Icons.lock,
                                hideText: true,
                              ),
                              SizedBox(height: 20),
                              customButton(
                                buttonLabel: "Login",
                                action: () {
                                  //serverLogin();
                                },
                              ),
                              SizedBox(height: 25),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  customtitleText(label: "Don't have an account?"),
                                  GestureDetector(
                                    child: customtitleText(
                                      label: "Sign up here",
                                      labelColor: orangeColor,
                                      //onTap: gotoRegister,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void gotoRegister() {
    Get.offAllNamed("/");
  }

//   
}