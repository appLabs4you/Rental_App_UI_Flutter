import 'package:flutter/material.dart';

import 'home/MessageScreen.dart';
import 'home/ProfileScreen.dart';
import 'home/PropertyScreen.dart';
import 'home/SettingsScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<BottomNavigationBarItem> _items;
  int _currentIndex = 0;


  @override
  void initState() {
    _items = new List();
    _items.add(BottomNavigationBarItem(
        icon: Icon(Icons.home), title: Text('Property')));
    _items.add(BottomNavigationBarItem(
        icon: Icon(Icons.person), title: Text('Profile')));
    _items.add(BottomNavigationBarItem(
        icon: Icon(Icons.mail), title: Text('Messages')));
    _items.add(BottomNavigationBarItem(
        icon: Icon(Icons.settings), title: Text('Settings')));
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          items: _items,
          // this will be set when a new tab is ta
          selectedItemColor: Colors.pink,
          unselectedItemColor: Colors.black54,
          currentIndex: _currentIndex,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          onTap: onTabTapped),
      body: _getHomeItemWidget(_currentIndex),
    );
  }


  _getHomeItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new PropertyScreen();
      case 1:
        return new ProfileScreen();
      case 2:
        return new MessageScreen();
      default:
        return new SettingsScreen();
    }
  }

}
