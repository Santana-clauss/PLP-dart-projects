import 'package:flutter/material.dart';
class SerachBar extends StatelessWidget {
  const SerachBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
    margin: EdgeInsets.symmetric(vertical: 8),
    padding: EdgeInsets.symmetric(horizontal: 12),
    decoration: BoxDecoration(
      color: Colors.grey[200],
      borderRadius: BorderRadius.circular(8),
    ),
    child: TextField(
      decoration: InputDecoration(
        hintText: 'Search',
        border: InputBorder.none,
        icon: Icon(Icons.search, color: Colors.grey),
      ),
    ),
  );
  }
}