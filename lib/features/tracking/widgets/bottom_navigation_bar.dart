import 'package:dhiwise_task/theme/colors.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 8,
      iconSize: 30,
      unselectedItemColor: Colors.grey,
      selectedItemColor: AppColors.blue,
      showSelectedLabels: false,
      currentIndex: 2,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_rounded),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.autorenew_rounded),
          label: 'Changes',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.donut_large_sharp),
          label: 'Chart',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ],
    );
  }
}
