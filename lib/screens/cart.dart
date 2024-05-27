import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  final List<Map<String, String>> cart;

  const CartScreen({Key? key, required this.cart}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        centerTitle: true,
      ),
      body: cart.isEmpty
          ? const Center(
              child: Text('Your cart is empty'),
            )
          : ListView.builder(
              itemCount: cart.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(cart[index]['name']!),
                  subtitle: Text(cart[index]['price']!),
                );
              },
            ),
    );
  }
}
