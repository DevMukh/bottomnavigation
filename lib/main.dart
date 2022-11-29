import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navigation',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.tealAccent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            'Bottom Navigation',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          centerTitle: true,
          //elevation: 10,
        ),
        bottomNavigationBar: Container(
          color: Colors.tealAccent,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: GNav(
              padding: EdgeInsets.all(8),
              gap: 10,
              backgroundColor: Colors.tealAccent,
              color: Colors.black,
              activeColor: Colors.lightGreen,
              tabBackgroundColor: Colors.greenAccent,
              tabs: [
                GButton(
                  icon: Icons.home_filled,
                  curve: Curves.easeInBack,
                  text: 'Home'
                ),
                GButton(
                  icon: Icons.comment,
                  curve: Curves.easeInBack,
                  text: 'Comment',
                ),
                GButton(
                  icon: Icons.settings,
                  curve: Curves.easeInBack,
                  text: 'Settings',
                ),
                GButton(
                  icon: Icons.search,
                  curve: Curves.easeInBack,
                  text: 'Search',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
