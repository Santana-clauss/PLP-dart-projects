// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shopeasy/config/constants.dart';
import 'package:shopeasy/views/categorybutton.dart';
import 'package:shopeasy/views/customtext.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // First Container
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 200,
              color: Colors.red[800],
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.menu, color: Colors.white),
                        onPressed: () {},
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon:
                                Icon(Icons.search_rounded, color: Colors.black),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(Icons.shopping_basket_rounded,
                                color: Colors.black),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'search clothing items',
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.camera_alt),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Second Container
          Positioned(
            top: 200,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              //: Colors.white,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customText(label: "Categories",labelColor: blackColor,),
                      customText(label:"View All",labelColor: blackColor),
                    ],
                    
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CategoryButton('Dresses'),
                      CategoryButton('Tops'),
                      CategoryButton('Bottoms'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CategoryButton('Jackets'),
                      CategoryButton('Hoodies'),
                      CategoryButton('Shoes'),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 150,
                    width: 600,
                    decoration: BoxDecoration(
                      color: redColor,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: customText(label: "New Arrivals",labelColor:blackColor,fontSize: 28,),
                    
                    
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Discover the latest trends now',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Explore ',
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
          
                  
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
