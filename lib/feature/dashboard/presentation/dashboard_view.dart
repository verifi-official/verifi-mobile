import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:verifi/core/theme/app_colors.dart';
import 'package:verifi/feature/history/presentation/view/history_view.dart';
import 'package:verifi/feature/home/presentation/view/home_view.dart';
import 'package:verifi/feature/profile/presentation/view/profile.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = <Widget>[
    const Home(),
    const HistoryView(),
    const Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/home.svg',
            ),
            label: 'Home',
            activeIcon: SvgPicture.asset(
              'assets/icons/home_filled.svg',
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/history.svg',
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/history_filled.svg',
              colorFilter: ColorFilter.mode(
                AppColor.kBGColor,
                BlendMode.srcIn,
              ),
            ),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/profile.svg',
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/profile_filled.svg',
              colorFilter: ColorFilter.mode(
                AppColor.kBGColor,
                BlendMode.srcIn,
              ),
            ),
            label: 'Profile',
          ),
        ],
        onTap: _onItemTapped,
        selectedItemColor: AppColor.kBGColor, // Use your primary color
        unselectedItemColor: const Color(0xFF60708F), // Use your inactive color
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
