import 'package:fabrico_demo/constants.dart';
import 'package:fabrico_demo/presentation/screens/tabs/cart_tab.dart';
import 'package:fabrico_demo/presentation/screens/tabs/home_tab.dart';
import 'package:fabrico_demo/presentation/screens/tabs/profile_tab.dart';
import 'package:fabrico_demo/presentation/screens/tabs/search_tab.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController();

  final List<Widget> _tabs = [
    const HomeTab(),
    const SearchTab(),
    const CartTab(),
    const ProfileTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavigationBar(),
      body: Column(
        children: [
          // ----------------- Tabs -----------------
          Expanded(
              child: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _pageController,
            onPageChanged: (value) {},
            children: _tabs,
          ))
        ],
      ),
    );
  }

  Widget bottomNavigationBar() => Material(
        elevation: 10,
        child: Container(
          padding: const EdgeInsets.all(15.0),
          child: GNav(
              haptic: true,
              tabBorderRadius: 30,
              // tabActiveBorder: Border.all(color: Colors.black, width: 1),
              curve: Curves.easeIn,
              duration: const Duration(milliseconds: 100),
              gap: 8,
              activeColor: Colors.black,
              iconSize: 24,
              tabBackgroundColor: appThemeColor,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              onTabChange: (value) {
                _pageController.jumpToPage(value);
              },
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                  padding: EdgeInsets.all(8),
                ),
                GButton(
                  icon: Icons.search,
                  text: 'Search',
                  padding: EdgeInsets.all(8),
                ),
                GButton(
                  icon: Icons.shopping_cart_outlined,
                  text: 'Cart',
                  padding: EdgeInsets.all(8),
                ),
                GButton(
                  icon: Icons.person_outline,
                  text: 'Profile',
                  padding: EdgeInsets.all(8),
                )
              ]),
        ),
      );
}
