import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  final int currentIndex;
  final Function(int)? onTabTapped;

  const BottomNav({
    Key? key,
    required this.currentIndex,
    required this.onTabTapped,
  }) : super(key: key);

  BottomNavigationBarItem navBarItem(IconData icon) {
    return BottomNavigationBarItem(
      backgroundColor: const Color.fromARGB(255, 15, 4, 34),
      icon: Icon(
        icon,
        size: 30,
        color: Colors.white,
      ),
      label: '',
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      currentIndex: currentIndex,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      onTap: onTabTapped,
      type: BottomNavigationBarType.shifting,
      items: [
        navBarItem(Icons.home_outlined),
        navBarItem(Icons.search_outlined),
        navBarItem(Icons.album_outlined),
        navBarItem(Icons.task_alt_outlined),
        navBarItem(Icons.account_circle_outlined),
      ],
    );
  }
}
