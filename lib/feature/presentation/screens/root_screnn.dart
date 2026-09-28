import 'package:flutter/material.dart';

class RootScrenn extends StatefulWidget {
  const RootScrenn({super.key});

  @override
  State<RootScrenn> createState() => _RootScrennState();
}

class _RootScrennState extends State<RootScrenn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(
            icon: Icon(Icons.shopping_cart_sharp),
            label: 'Cart',
          ),
          NavigationDestination(icon: Icon(Icons.favorite), label: 'Wish List'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Perfil'),
        ],
      ),
    );
  }
}
