import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:flutter/material.dart';
import 'package:medicine_app/pages/shopkeeper/shopkeeper_addmedicinepage.dart';
import 'package:medicine_app/pages/shopkeeper/shopkeeper_profilepage.dart';
import 'package:medicine_app/pages/shopkeeper/view_orderpage.dart';

class ShopBottomNavi extends StatefulWidget {
  const ShopBottomNavi({super.key});

  @override
  State<ShopBottomNavi> createState() => _ShopBottomNaviState();
}

class _ShopBottomNaviState extends State<ShopBottomNavi> {
  int selectedPos = 0;

  double bottomNavBarHeight = 60;
  List<TabItem> tabItems = List.of(
    [
      TabItem(
        Icons.shopping_cart_checkout,
        "View Order",
        const Color(0xff04516f),
        labelStyle: const TextStyle(
          fontWeight: FontWeight.normal,
        ),
      ),
      TabItem(
        Icons.store_sharp,
        "Add Stock",
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
    ],
  );

  late CircularBottomNavigationController _navigationController;
  final List<Widget> _pages = [
    const ViewOrdersPage(),
    const ShopAddmedicine(),
    ShopProfilePage(),
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
