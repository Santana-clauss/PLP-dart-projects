// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:shopeasy/config/constants.dart';
import 'package:shopeasy/views/categorybutton.dart';
import 'package:shopeasy/views/custombutton.dart';
import 'package:shopeasy/views/customedetails.dart';
import 'package:shopeasy/views/customtext.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // First Container
            Container(
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
                        icon: Icon(Icons.menu, color: blackColor),
                        onPressed: () {},
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon:
                                Icon(Icons.search_rounded, color: blackColor),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(Icons.shopping_basket_rounded,
                                color: blackColor),
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
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
                        suffixIcon: Icon(Icons.camera_alt, color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Second Container
            Container(
              color: Colors.grey[200],
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customText(
                        label: "Categories",
                        labelColor: blackColor,
                      ),
                      customText(label: "View All", labelColor: greyColor),
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
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CategoryButton('Jackets'),
                      CategoryButton('Hoodies'),
                      CategoryButton('Shoes'),
                    ],
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: redColor,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          customText(
                            label: "New Arrivals",
                            labelColor: blackColor,
                            fontSize: 24,
                          ),
                          //SizedBox(height: 10),
                          customText(
                            label: "Discover the latest trends now",
                            labelColor: blackColor,
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              customText(
                                label: "Explore",
                                labelColor: whiteColor,
                              ),
                              Icon(Icons.arrow_forward_rounded,
                                  color: whiteColor),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customText(label: "Trending items"),
                      customText(label: "View All", labelColor: greyColor),
                    ],
                  ),
                  SizedBox(height: 20,),
                  // Row of customdetails widgets
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: CustomDetails(
                          imageUrl: "/images/tshirt.jpg",
                          tileTitle: "TSHIRT",
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: CustomDetails(
                          imageUrl: "/images/tshirt.jpg",
                          tileTitle: "TSHIRT",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: customText(label: "Add to Cart"),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: redColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: customText(label: "Try On"),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: redColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
