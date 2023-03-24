import 'package:f2c/screen/CategoryScreen.dart';
import 'package:f2c/screen/FavScreen.dart';
import 'package:f2c/screen/HomeScreen.dart';
import 'package:f2c/screen/CartScreen.dart';
import 'package:f2c/screen/ProfileScreen.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {

  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white, primarySwatch: Colors.orange),
      home: const MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {

  int _selectedIndex = 0;

  List<Widget> pageList = [
    const HomeScreen(),
    const CategoryScreen(),
    const FavScreen(),
    const CartScreen(),
    ProfileScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_rounded),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            label: 'Favourites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart_rounded),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        onTap: _onItemTapped,
      ),
    );
  }
}
