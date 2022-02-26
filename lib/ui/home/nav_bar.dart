import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Theme.of(context).primaryColor,
          ),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_cart,
            color: Theme.of(context).primaryColor,
          ),
          label: 'cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.assignment_turned_in,
            color: Theme.of(context).primaryColor,
          ),
          label: 'orders',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            color: Theme.of(context).primaryColor,
          ),
          label: 'settings',
        ),
      ],
    );
  }
}
