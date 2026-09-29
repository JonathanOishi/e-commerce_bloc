import 'package:ecommerce_bloc/feature/presentation/screens/cart_screnn.dart';
import 'package:ecommerce_bloc/feature/presentation/screens/home_screnn.dart';
import 'package:ecommerce_bloc/feature/presentation/screens/profile_screen.dart';
import 'package:ecommerce_bloc/feature/presentation/screens/wishi_list.dart';
import 'package:flutter/material.dart';

class RootScrenn extends StatefulWidget {
  const RootScrenn({super.key});

  @override
  State<RootScrenn> createState() => _RootScrennState();
}

class _RootScrennState extends State<RootScrenn> {
  int selectedindex = 0;

  final List<Widget> _pages = [
    HomeScrenn(),
    CartScrenn(),
    WishiList(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(
            icon: Icon(
              selectedindex == 0 ? Icons.home : Icons.home_outlined,
              color: selectedindex == 0
                  ? Colors.deepOrangeAccent
                  : Colors.grey[600],
            ),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(
              selectedindex == 1
                  ? Icons.shopping_cart
                  : Icons.shopping_cart_outlined,
              color: selectedindex == 1
                  ? Colors.deepOrangeAccent
                  : Colors.grey[600],
            ),
            label: 'Cart',
          ),
          NavigationDestination(
            icon: Icon(
              selectedindex == 2 ? Icons.favorite : Icons.favorite_outline,
              color: selectedindex == 2
                  ? Colors.deepOrangeAccent
                  : Colors.grey[600],
            ),
            label: 'Wish List',
          ),
          NavigationDestination(
            icon: Icon(
              selectedindex == 3 ? Icons.person : Icons.person_outlined,
              color: selectedindex == 3
                  ? Colors.deepOrangeAccent
                  : Colors.grey[600],
            ),
            label: 'Perfil',
          ),
        ],

        selectedIndex: selectedindex,
        onDestinationSelected: (value) {
          setState(() {
            selectedindex = value;
          });
        },
        backgroundColor: Colors.white,
        indicatorColor: Colors.transparent,
      ),
      body: _pages[selectedindex],
    );
  }
}
