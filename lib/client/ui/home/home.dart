import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:swalis/client/controllers/cart_controller.dart';
import 'package:swalis/client/controllers/order_controller.dart';
import 'package:swalis/client/ui/home/home%20screens/cart.dart';
import 'package:swalis/client/ui/home/home%20screens/home_widget.dart';
import 'package:swalis/client/ui/home/home%20screens/ordre.dart';
import 'package:swalis/client/ui/home/home%20screens/search.dart';

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
    Center(
      child: Text('settings'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color(0xff192841),
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Color(0xff192841),
            ),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              color: Color(0xff192841),
            ),
            label: 'cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.assignment_turned_in,
              color: Color(0xff192841),
            ),
            label: 'orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Color(0xff192841),
            ),
            label: 'settings',
          ),
        ],
        onTap: _onTap,
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xff192841),
      ),
    );
  }
}
