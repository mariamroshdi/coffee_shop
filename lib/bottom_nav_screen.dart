import 'package:coffee_shop_app/features/cart/views/cart_screen.dart';
import 'package:coffee_shop_app/features/favourite/views/favourite_screen.dart';
import 'package:coffee_shop_app/features/home/views/home_screen.dart';
import 'package:coffee_shop_app/features/profile/views/profile_screen.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;

  List<Widget> screens = [
    HomeScreen(),
    CartScreen(),
    FavouriteScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (currentItem) {
            setState(() {
              currentIndex = currentItem;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              activeIcon: Icon(Icons.home),
              label: "home"
            ),
            BottomNavigationBarItem(
              label: "cart",
              icon: Icon(Icons.shopping_cart),
              activeIcon: Icon(Icons.shopping_cart),),
            BottomNavigationBarItem(
              label: "favorite",
              icon: Icon(Icons.favorite),
              activeIcon: Icon(Icons.favorite),),
            BottomNavigationBarItem(
              label: "profile",
              icon: Icon(Icons.home),
              activeIcon: Icon(Icons.home),),
          ]),

    body: screens[currentIndex],
    )
    );
  }
}
