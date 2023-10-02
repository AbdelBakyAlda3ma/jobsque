import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/global/icons_jobeque_icons.dart';
import '../utils/global/app_colors.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.primary[500],
      unselectedItemColor: AppColors.neutral[400]!,
      unselectedIconTheme: const IconThemeData(),
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedFontSize: 10,
      unselectedFontSize: 10,
      elevation: 50,
      currentIndex: currentIndex,
      onTap: (index) {
        setState(() {
          currentIndex = index;
        });
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(IconsJobeque.home),
          label: 'Home',
          activeIcon: Icon(IconsJobeque.homebold),
        ),
        BottomNavigationBarItem(
          icon: Icon(IconsJobeque.message),
          label: 'Messages',
          activeIcon: Icon(IconsJobeque.messagebold),
        ),
        BottomNavigationBarItem(
          icon: Icon(IconsJobeque.briefcase),
          label: 'Applied',
          activeIcon: Icon(IconsJobeque.briefcasebold),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            IconsJobeque.archiveminus,
          ),
          label: 'Saved',
          activeIcon: Icon(IconsJobeque.archiveminusbold),
        ),
        BottomNavigationBarItem(
          icon: Icon(IconsJobeque.profile),
          label: 'Profile',
          activeIcon: Icon(IconsJobeque.profilebold),
        ),
      ],
    );
  }
}
