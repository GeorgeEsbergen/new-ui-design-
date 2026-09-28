import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:session9/home_page/views/home_page.dart';
import 'package:session9/profile/views/profile_page.dart';
import 'package:session9/settings/views/settings_page.dart';
import 'package:iconly/iconly.dart';

class BNB extends StatefulWidget {
  const BNB({super.key});

  @override
  State<BNB> createState() => _BNBState();
}

class _BNBState extends State<BNB> {
  List<Widget> _pages = [HomePage(), ProfilePage(), SettingsPage()];
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBody: true,
      body: _pages[_currentPage],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: CrystalNavigationBar(
          currentIndex: _currentPage,
          // indicatorColor: Colors.white,
          unselectedItemColor: Colors.white70,
          backgroundColor: Colors.black.withOpacity(0.1),
          // outlineBorderColor: Colors.black.withOpacity(0.1),
          borderWidth: 2,
          outlineBorderColor: Colors.white,
          onTap: (value) {
            _currentPage = value;
            setState(() {});
          },
          items: [
            /// Home
            CrystalNavigationBarItem(
              icon: IconlyLight.home,
              unselectedIcon: IconlyBroken.home,
              selectedColor: Colors.green,
              badge: Badge(
                label: Text("9+", style: TextStyle(color: Colors.white)),
              ),
            ),

            /// Favourite
            CrystalNavigationBarItem(
              icon: IconlyBold.add_user,
              unselectedIcon: IconlyLight.profile,
              selectedColor: Colors.red,
            ),

            /// Profile
            CrystalNavigationBarItem(
              icon: IconlyBold.setting,
              unselectedIcon: IconlyLight.setting,
              selectedColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
