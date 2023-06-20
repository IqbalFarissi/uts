import 'package:flutter/material.dart';
import 'package:uts_aplikasi_bergerak/components/bottom_nav_bar.dart';
import 'package:uts_aplikasi_bergerak/pages/shop_page.dart';

import 'cart_page.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  //selected index untuk mengontol buttom nav bar
  int _selectedIndex = 0;

  //method ini untuk update index
  //ketika user menekan buttom bar
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //halaman untuk ditampilkan
  final List<Widget> _pages = [
    //shop page
    const ShopPage(),

    //keranjang page
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[400],
      bottomNavigationBar: MyButtomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Padding(
              padding: EdgeInsets.only(left:12.0),
              child: Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                //logo
                DrawerHeader(
                  child: Image.asset('assets/images/game.png'),
                ),

                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Divider(
                    color: Colors.lightBlue[400],
                  ),
                ),

                //page lainnya
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(Icons.home, color: Colors.lightBlue[400]),
                    title: Text(
                      'Home',
                      style: TextStyle(color: Colors.lightBlue[400]),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(Icons.info, color: Colors.lightBlue[400]),
                    title: Text(
                      'About',
                      style: TextStyle(color: Colors.lightBlue[400]),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, bottom: 25),
              child: ListTile(
                leading: Icon(Icons.logout, color: Colors.lightBlue[400]),
                title: Text(
                  'Logout',
                  style: TextStyle(color: Colors.lightBlue[400]),
                ),
              ),
            )
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
