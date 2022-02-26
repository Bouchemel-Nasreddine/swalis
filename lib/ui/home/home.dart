import 'package:flutter/material.dart';
import 'package:swalis/ui/home/home%20screens/cart.dart';
import 'package:swalis/ui/home/home%20screens/home_widget.dart';
import 'package:swalis/ui/home/home%20screens/ordre.dart';
import 'package:swalis/ui/home/home%20screens/search.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  void _onTap(int index) {
    _selectedIndex = index;
    setState(() {});
  }
  static final List<Widget> _pages = <Widget>[
    HomeWidget(),
    Search(),
    Cart(),
    Ordre(),
    Center(child: Text('settings'),),
  ];


  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
              Icons.search,
              color: Theme.of(context).primaryColor,
            ),
            label: 'search',
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
        onTap: _onTap,
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
