import 'package:flutter/material.dart';
import 'package:shopeasy/config/constants.dart';

class CustomDetails extends StatelessWidget {
  final String imageUrl;
  final String tileTitle;
  

  const CustomDetails({
    required this.imageUrl,
    required this.tileTitle,
    
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        color: redColor, // Background color of the container
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(10), // Padding for the content
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Icon and Image
          Column(
            children: [
              Container(
                height: 60,
                width: 60,
                child: Image.asset(imageUrl),
              ),
              SizedBox(width: 10),
              // Text
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Text(
                        tileTitle,
                        style: TextStyle(fontWeight: FontWeight.bold,),
                      ),
                      SizedBox(height: 10),
                      Icon(Icons.shopping_basket_rounded),
                    ],
                  )
                ],
              ),
            ],
          ),
          
        ],
      ),
    );
  }
}
