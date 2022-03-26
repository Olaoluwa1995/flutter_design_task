import 'package:design_test/custom_widgets/bottom_nav.dart';
import 'package:design_test/views/home.dart';
import 'package:flutter/material.dart';

class TabViews extends StatefulWidget {
  const TabViews({Key? key}) : super(key: key);

  @override
  _TabViewsState createState() => _TabViewsState();
}

class _TabViewsState extends State<TabViews> {
  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _children = [
    const HomeScreen(),
    Container(),
    Container(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: _children[_currentIndex]),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 3,
              offset: const Offset(0, -7),
            )
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
          child: BottomNav(
            currentIndex: _currentIndex,
            onTabTapped: onTabTapped,
          ),
        ),
      ),
    );
  }
}
