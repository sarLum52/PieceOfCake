import 'package:flutter/material.dart';
import 'package:frontend/pages/demo.dart';
import 'package:frontend/pages/home.dart';
import 'package:frontend/pages/shopping_cart.dart';
import 'package:frontend/pages/profile/profile.dart';
import 'package:frontend/pages/browse.dart';


class Index extends StatefulWidget {
  const Index({Key? key, arguments}) : super(key: key);

  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {

  int _currentIndex = 0;
  final List _pageList = <Widget>[
    Home(),
    ShoppingCart(),
    Profile(),
    Browse(),
    Demo(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
            activeIcon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: "Cart",
              activeIcon: Icon(Icons.shopping_cart)
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Profile",
              activeIcon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Browse",
              activeIcon: Icon(Icons.search)
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Demo",
              activeIcon: Icon(Icons.home)
          ),

        ],
      ),
    );
  }
}

