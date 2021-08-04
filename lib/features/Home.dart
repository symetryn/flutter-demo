import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hello_world/features/ListItem.dart';
import 'package:hello_world/features/SignUp.dart';

import 'Dashboard.dart';
import 'Login.dart';
import 'Wallet.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    Dashboard(),
    Wallet(),
    Login(),
    SignUp(),
    Dashboard(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          print(index);
          setState(() {
            _currentIndex = index;
          });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: 0, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
              icon: new Icon(
                Icons.home,
                color: Colors.grey,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: new Icon(
                Icons.wallet_travel,
                color: Colors.grey,
              ),
              label: "Wallet"),
          BottomNavigationBarItem(
              backgroundColor: Colors.red,
              icon: Icon(
                Icons.add,
                color: Colors.grey,
              ),
              label: "Add"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.chat,
                color: Colors.grey,
              ),
              label: "Chat"),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.grey,
            ),
            label: "Profile",
          )
        ],
      ),
    );
  }
}
