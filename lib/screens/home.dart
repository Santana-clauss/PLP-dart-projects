import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:shopeasy/config/const.dart';
import 'package:shopeasy/controllers/controllers.dart';
import 'package:shopeasy/screens/cart.dart';
import 'package:shopeasy/screens/profile.dart';
import 'package:shopeasy/screens/settings.dart';

HomeController homeController = Get.put(HomeController());

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _searchController = TextEditingController();

  List<Map<String, String>> categories = [
    {'name': 'Electronics', 'image': 'https://tinyurl.com/5d5bwe8a'},
    {'name': 'Clothing', 'image': 'https://tinyurl.com/2y3hc96z'},
    {'name': 'Shoes', 'image': 'https://tinyurl.com/3b5reu78'},
    {'name': 'Books', 'image': 'https://tinyurl.com/56ketjmw'},
    {'name': 'Home & Kitchen', 'image': 'https://tinyurl.com/4edk89yx'},
    {'name': 'Toys', 'image': 'https://tinyurl.com/mbdc4nt9'},
  ];

  List<Map<String, String>> displayedCategories = [];
  List<Map<String, String>> cart = [];

  @override
  void initState() {
    super.initState();
    displayedCategories = List.from(categories);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: orangeColor,
      appBar: AppBar(
        title: const Text('Shopeasy'),
        actions: <Widget>[
          Container(
            width: 200,
            child: TextField(
              controller: _searchController,
              decoration: const InputDecoration(
                hintText: 'Search Categories...',
                border: InputBorder.none,
                icon: Icon(Icons.search),
              ),
              onChanged: _filterCategories,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfilePage(),
                ),
              );
            },
          ),
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CartScreen(cart: cart),
                    ),
                  );
                },
              ),
              if (cart.isNotEmpty)
                Positioned(
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    constraints: const BoxConstraints(
                      minWidth: 18,
                      minHeight: 18,
                    ),
                    child: Text(
                      '${cart.length}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
      body: Obx(() {
        int selectedPage = homeController.selectedPage.value;
        if (selectedPage == 0) {
          return _buildHomePage();
        } else if (selectedPage == 1) {
          return SettingsPage();
        } else {
          return ProfilePage();
        }
      }),
      bottomNavigationBar: GNav(
        color: const Color.fromARGB(255, 160, 150, 150),
        activeColor: orangeColor,
        tabBackgroundColor: orangeColor.withOpacity(0.1),
        backgroundColor: primaryColor.withOpacity(0.08),
        tabs: [
          GButton(
            icon: Icons.home,
            iconColor: appBlackColor,
            text: 'Home',
          ),
          GButton(
            icon: Icons.category,
            iconColor: appBlackColor,
            text: 'Settings',
          ),
          GButton(
            icon: Icons.person,
            iconColor: appBlackColor,
            text: 'Profile',
          ),
        ],
        selectedIndex: homeController.selectedPage.value,
        onTabChange: (index) {
          homeController.updateSelectedPage(index);
        },
      ),
    );
  }

  Widget _buildHomePage() {
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        childAspectRatio: 1.0,
      ),
      itemCount: displayedCategories.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CategoriesScreen(
                  category: displayedCategories[index]['name']!,
                  onAddToCart: _addToCart,
                ),
              ),
            );
          },
          child: Card(
            elevation: 3.0,
            child: Column(
              children: [
                Expanded(
                  child: Image.network(
                    displayedCategories[index]['image']!,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    displayedCategories[index]['name']!,
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _filterCategories(String query) {
    if (query.isEmpty) {
      setState(() {
        displayedCategories = List.from(categories);
      });
      return;
    }
    final filtered = categories.where((category) {
      final categoryName = category['name']!.toLowerCase();
      final searchLower = query.toLowerCase();
      return categoryName.contains(searchLower);
    }).toList();

    setState(() {
      displayedCategories = filtered;
    });
  }

  void _addToCart(Map<String, String> product) {
    setState(() {
      cart.add(product);
    });
  }
}

class CategoriesScreen extends StatelessWidget {
  final String category;
  final Function(Map<String, String>) onAddToCart;

  const CategoriesScreen({
    Key? key,
    required this.category,
    required this.onAddToCart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> products = [
      {
        'name': 'Product 1',
        'price': '\$100',
        'stock': 'In Stock',
        'description': 'Description 1'
      },
      {
        'name': 'Product 2',
        'price': '\$150',
        'stock': 'In Stock',
        'description': 'Description 2'
      },
      {
        'name': 'Product 3',
        'price': '\$200',
        'stock': 'Out of Stock',
        'description': 'Description 3'
      },
      {
        'name': 'Product 4',
        'price': '\$250',
        'stock': 'In Stock',
        'description': 'Description 4'
      },
      {
        'name': 'Product 5',
        'price': '\$300',
        'stock': 'In Stock',
        'description': 'Description 5'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(category),
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 1.0,
        ),
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              onAddToCart(products[index]);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('${products[index]['name']} added to cart'),
                  duration: const Duration(seconds: 1),
                ),
              );
            },
            child: Card(
              elevation: 3.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      products[index]['name']!,
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      products[index]['price']!,
                      style: const TextStyle(fontSize: 16.0),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      products[index]['stock']!,
                      style:
                          const TextStyle(fontSize: 14.0, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

