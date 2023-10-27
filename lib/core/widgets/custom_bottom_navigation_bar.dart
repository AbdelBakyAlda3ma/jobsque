import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jobseque/core/routing/routes.gr.dart';
import 'package:jobseque/core/utils/global/icons_jobeque_icons.dart';
import '../utils/global/app_colors.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final String routeName;
  const CustomBottomNavigationBar({
    super.key,
    required this.routeName,
  });

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  late int _selectedIndex;

  List<PageRouteInfo<dynamic>> bottomNavigationRoutes = [
    const HomeRoute(),
    const MessagesRoute(),
    const AppliedJobsRoute(),
    const SavedJobsRoute(),
    const ProfileRoute(),
  ];

  int _getSelectedIndex(String routeName) {
    switch (routeName) {
      case HomeRoute.name:
        return 0;
      case MessagesRoute.name:
        return 1;
      case AppliedJobsRoute.name:
        return 2;
      case SavedJobsRoute.name:
        return 3;
      case ProfileRoute.name:
        return 4;
      default:
        return 0;
    }
  }

  @override
  void initState() {
    _selectedIndex = _getSelectedIndex(widget.routeName);
    super.initState();
  }

  handlingNavigation(int index) {
    if (index == 0) {
      context.router.pushAndPopUntil(
        bottomNavigationRoutes[0],
        predicate: (route) => false,
      );
    } else {
      context.router.push(
        bottomNavigationRoutes[index],
      );
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = _getSelectedIndex(widget.routeName);
    });
    if (_selectedIndex != index) {
      handlingNavigation(index);
    }
  }

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
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
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
