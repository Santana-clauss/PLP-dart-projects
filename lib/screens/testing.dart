import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class TestingPage extends StatelessWidget {
  final List<String> carouselImages = [
    'assets/image1.png',
    'assets/image2.png',
    // Add more images as needed
  ];

  final List<Map<String, String>> fashionItems = [
    {
      'name': 'Skeleton Evory Shirt',
      'price': '\$352',
      'oldPrice': '\$420',
      'image': 'assets/fashion1.png',
      'rating': '4.5',
      'brand': 'Morninggood',
    },
    {
      'name': 'Pigmen Cream Shirt',
      'price': '\$352',
      'oldPrice': '\$420',
      'image': 'assets/fashion2.png',
      'rating': '4.0',
      'brand': 'Joinplaza',
    },
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: _buildSearchBar(),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_bag_outlined, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildCarousel(),
            _buildCategoryTabs(),
            _buildFashionGrid(),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildSearchBar() {
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

  Widget _buildCarousel() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: CarouselSlider(
        options: CarouselOptions(
          height: 200,
          autoPlay: true,
          enlargeCenterPage: true,
        ),
        items: carouselImages.map((image) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }

  Widget _buildCategoryTabs() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _buildCategoryTab('All'),
            _buildCategoryTab('Fashion'),
            _buildCategoryTab('Electronics'),
            _buildCategoryTab('Shoes'),
            _buildCategoryTab('Beauty'),
            _buildCategoryTab('Sports'),
            // Add more categories as needed
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryTab(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Chip(
        label: Text(title),
        backgroundColor: Colors.grey[200],
      ),
    );
  }

  Widget _buildFashionGrid() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.7,
        ),
        itemCount: fashionItems.length,
        itemBuilder: (context, index) {
          final item = fashionItems[index];
          return _buildFashionItem(item);
        },
      ),
    );
  }

  Widget _buildFashionItem(Map<String, String> item) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
              child: Image.asset(
                item['image']!,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item['brand']!,
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                SizedBox(height: 4),
                Text(
                  item['name']!,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      item['price']!,
                      style: TextStyle(fontSize: 14, color: Colors.blue),
                    ),
                    SizedBox(width: 4),
                    Text(
                      item['oldPrice']!,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: List.generate(
                    5,
                    (index) => Icon(
                      index < int.parse(item['rating']!.split('.')[0])
                          ? Icons.star
                          : Icons.star_border,
                      size: 12,
                      color: Colors.yellow,
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

 
}
