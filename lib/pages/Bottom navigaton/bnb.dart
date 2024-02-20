import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:flutter/material.dart';
import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medicine_app/pages/Bottom%20navigaton/home_page.dart';
import 'package:medicine_app/pages/Bottom%20navigaton/medication.dart';
import 'package:medicine_app/pages/Bottom%20navigaton/profile_page.dart';

class BottomNavi extends StatefulWidget {
  const BottomNavi({super.key});

  @override
  State<BottomNavi> createState() => _BottomNaviState();
}

class _BottomNaviState extends State<BottomNavi> {
  int selectedPos = 0;

  double bottomNavBarHeight = 60;

  List<TabItem> tabItems = List.of([
    TabItem(
      Icons.home,
      "Home",
      const Color(0xff04516f),
      labelStyle: const TextStyle(
        fontWeight: FontWeight.normal,
      ),
    ),
    TabItem(
      FontAwesomeIcons.pills,
      "Medications",
      const Color(0xff04516f),
      labelStyle: const TextStyle(
        fontWeight: FontWeight.normal,
      ),
    ),
    TabItem(
      Icons.person,
      "Profile",
      const Color(0xff04516f),
      labelStyle: const TextStyle(
        fontWeight: FontWeight.normal,
      ),
    ),
  ]);

  late CircularBottomNavigationController _navigationController;
  final List<Widget> _pages = [
    const Home(),
    Medication(),
    const ProfilePage(),
  ];
  @override
  void initState() {
    super.initState();
    _navigationController = CircularBottomNavigationController(selectedPos);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: bottomNavBarHeight),
            child: _pages[selectedPos],
          ),
          Align(alignment: Alignment.bottomCenter, child: bottomNav())
        ],
      ),
    );
  }

  Widget bottomNav() {
    return CircularBottomNavigation(
      tabItems,
      controller: _navigationController,
      selectedPos: selectedPos,
      barHeight: bottomNavBarHeight,
      barBackgroundColor: Colors.white,
      backgroundBoxShadow: const <BoxShadow>[
        BoxShadow(color: Colors.black45, blurRadius: 10.0),
      ],
      animationDuration: const Duration(milliseconds: 300),
      selectedCallback: (int? selectedPos) {
        setState(() {
          this.selectedPos = selectedPos ?? 0;
        });
      },
    );
  }
}
