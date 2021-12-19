import 'package:contact_app/pages/favorite.dart';
import 'package:contact_app/pages/keypad.dart';
import 'package:contact_app/pages/voicemail.dart';
import 'package:flutter/material.dart';
import 'package:contact_app/models/details.dart';
import 'package:contact_app/data/data.dart';
import 'package:contact_app/pages/recent.dart';
import 'package:contact_app/screens/contactDetails.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<Details> contactDetails = Data.contactDetail();

  int currentIndex = 0;
  final screens = [
    Favorite(),
    Recent(),
    ContactDetails(),
    Keypad(),
    Voicemail(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff20232c),
        selectedItemColor: Color(0xffffffff),
        unselectedItemColor: Colors.white60,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: "Favorite",
            backgroundColor: Color(0xff20232c),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time_outlined),
            label: "Recent",
            backgroundColor: Color(0xff20232c),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "My Contact",
            backgroundColor: Color(0xff20232c),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            label: "Keypad",
            backgroundColor: Color(0xff20232c),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.voicemail),
            label: "Voicemail",
            backgroundColor: Color(0xff20232c),
          ),
        ],
      ),
    );
  }
}
