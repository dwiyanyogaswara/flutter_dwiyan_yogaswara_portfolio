import 'package:flutter/material.dart';
import 'package:dwiyan_yogaswara_portfolio/profile.dart';
import 'package:dwiyan_yogaswara_portfolio/work.dart';
import 'package:dwiyan_yogaswara_portfolio/portfolio.dart';
import 'package:dwiyan_yogaswara_portfolio/skills.dart';
import 'package:dwiyan_yogaswara_portfolio/education.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _bottomNavbarIndex = 0;

  void _onBottomNavBarTapped(int index) {
    setState(() {
      _bottomNavbarIndex = index;
    });
  }

  Widget _getBody(int index) {
    switch (index) {
      case 0:
        return ProfilePage();
      case 1:
        return WorkPage();
      case 2:
        return PortfolioPage();
      case 3:
        return SkillsPage();
      case 4:
        return EducationPage();
      default:
        return ProfilePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: _getBody(_bottomNavbarIndex),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _bottomNavbarIndex,
          onTap: _onBottomNavBarTapped,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.blue,
          selectedIconTheme: IconThemeData(size: 40),
          unselectedIconTheme: IconThemeData(size: 25),
          selectedLabelStyle:
              TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
          unselectedLabelStyle:
              TextStyle(fontSize: 15, fontWeight: FontWeight.w100),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
            BottomNavigationBarItem(
                icon: Icon(Icons.work_history), label: 'Work'),
            BottomNavigationBarItem(
                icon: Icon(Icons.computer), label: 'Portfolio'),
            BottomNavigationBarItem(
                icon: Icon(Icons.smart_button), label: 'Skills'),
            BottomNavigationBarItem(
                icon: Icon(Icons.cast_for_education), label: 'Education'),
          ],
        ),
      ),
    );
  }
}
