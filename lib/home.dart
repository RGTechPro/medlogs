import 'package:flutter/material.dart';
import 'package:medlogs/help.dart';
import 'package:medlogs/home_page.dart';
import 'package:medlogs/premium.dart';
import 'package:medlogs/profile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  final screens=const [
HomePage(),
PremiumPage(),
HelpPage(),
ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
            onTap: (int index) {
              setState(() {
            selectedIndex = index;
              });
            },
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.black,
            showUnselectedLabels: true,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.subscriptions, color: Colors.black),
                  label: 'Premium'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.help, color: Colors.black), label: 'Help'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle, color: Colors.black),
                  label: 'Profile')
            ]),
            body:screens[selectedIndex] ,
      ),
    );
  }
}
