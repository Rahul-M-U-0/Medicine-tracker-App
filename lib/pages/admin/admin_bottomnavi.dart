import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:flutter/material.dart';
import 'package:medicine_app/pages/admin/admin_approved_page.dart';
import 'package:medicine_app/pages/admin/admin_doctor_request_page.dart';
import 'package:medicine_app/pages/admin/admin_shopkeeper_request_page.dart';

class AdminBottomNavi extends StatefulWidget {
  const AdminBottomNavi({super.key});

  @override
  State<AdminBottomNavi> createState() => _AdminBottomNaviState();
}

class _AdminBottomNaviState extends State<AdminBottomNavi> {
  int selectedPos = 0;

  double bottomNavBarHeight = 60;
  List<TabItem> tabItems = List.of(
    [
      TabItem(
        Icons.check,
        "Approved",
        const Color(0xff04516f),
        labelStyle: const TextStyle(
          fontWeight: FontWeight.normal,
        ),
      ),
      TabItem(
        Icons.person_add_alt_1,
        "Doctor Request",
        const Color(0xff04516f),
        labelStyle: const TextStyle(
          fontWeight: FontWeight.normal,
        ),
      ),
      TabItem(
        Icons.store,
        "Shop Request",
        const Color(0xff04516f),
        labelStyle: const TextStyle(
          fontWeight: FontWeight.normal,
        ),
      ),
    ],
  );

  late CircularBottomNavigationController _navigationController;
  final List<Widget> _pages = const [
    AdminApprovedPage(),
    DoctorRequest(),
    ShopkeeperRequest(),
  ];

  @override
  void initState() {
    super.initState();
    _navigationController = CircularBottomNavigationController(selectedPos);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: bottomNavBarHeight),
              child: _pages[selectedPos],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: bottomNav(),
            ),
          ],
        ),
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
