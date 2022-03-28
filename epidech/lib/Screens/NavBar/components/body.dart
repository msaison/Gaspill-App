import 'package:epidhec/Screens/Flash/screen.dart';
import 'package:epidhec/Screens/Défis/screen.dart';
import 'package:epidhec/Screens/Home/screen.dart';
import 'package:epidhec/Screens/Map/screen.dart';
import 'package:epidhec/Screens/Profile/screen.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavBar(),
    );
  }
}

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBar();
}

class _NavBar extends State<NavBar> {
  int _index = 4;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const DefiScreen(),
    const FlashScreen(),
    const MapScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_index),
      ),
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.white,
        color: Colors.green.shade200,
        activeColor: Colors.green.shade800,
        style: TabStyle.fixedCircle,
        items: const <TabItem<dynamic>>[
          TabItem(
              icon: Icon(
                Icons.home,
                color: Colors.black26,
              ),
              activeIcon: Icon(
                Icons.home,
                color: Colors.black,
              )),
          TabItem(
              icon: Icon(
                Icons.card_giftcard_sharp,
                color: Colors.black26,
              ),
              activeIcon: Icon(
                Icons.card_giftcard_sharp,
                color: Colors.black,
              )),
          TabItem(
              icon: Icon(
                Icons.qr_code,
                color: Colors.black26,
              ),
              activeIcon: Icon(
                Icons.qr_code,
                color: Colors.black,
              )),
          TabItem(
              icon: Icon(
                Icons.maps_home_work,
                color: Colors.black26,
              ),
              activeIcon: Icon(Icons.maps_home_work, color: Colors.black)),
          TabItem(
              icon: Icon(
                Icons.account_box_sharp,
                color: Colors.black26
              ),
              activeIcon: Icon(
                Icons.account_box_sharp,
                color: Colors.black,
              )),
        ],
        initialActiveIndex: _index,
        onTap: _onItemTapped,
      ),
    );
  }
}
