import 'package:demoflutterapp/src/bottom/bottom_page1.dart';
import 'package:demoflutterapp/src/bottom/bottom_page2.dart';
import 'package:demoflutterapp/src/bottom/bottom_page3.dart';
import 'package:demoflutterapp/src/bottom/bottom_page4.dart';
import 'package:demoflutterapp/src/drawer/MyHeaderDrawer.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _nameState();
}

class _nameState extends State<HomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    BottomPage1(),
    BottomPage2(),
    BottomPage3(),
    BottomPage4()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
          child: GNav(
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.favorite_border,
                  text: 'Likes',
                ),
                GButton(icon: Icons.search, text: 'Search'),
                GButton(icon: Icons.settings, text: 'Settings'),
              ],
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              gap: 8,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              backgroundColor: Colors.black,
              color: Colors.white,
              activeColor: Colors.white,
              iconSize: 24,
              tabBackgroundColor: Color.fromARGB(255, 91, 91, 91)),
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Demo Flutter App"),
      ),
      drawer: Drawer(
          child: SingleChildScrollView(
        child: Container(
            child: Column(
          children: [MyDrawerHeader(), MyDrawerList()],
        )),
      )),
    );
  }

  Widget MyDrawerList() {
    return Container(
        padding: EdgeInsets.only(top: 15),
        child: Column(
          children: [
            menuItem(1, 'Dashboard', Icons.dashboard, false),
            menuItem(2, 'Messages', Icons.message, false),
            menuItem(3, 'Notifications', Icons.notifications, false),
          ],
        ));
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
        child: InkWell(
      onTap: () {
        print('clicked');
      },
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Row(
          children: [
            Expanded(
                child: Icon(
              icon,
              size: 20,
              color: Colors.black,
            )),
            Expanded(
                flex: 4,
                child: Text(
                  title,
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ))
          ],
        ),
      ),
    ));
  }
}
