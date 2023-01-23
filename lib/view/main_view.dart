import 'package:animations/animations.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:streamo/view/tabs/account_view.dart';
import 'package:streamo/view/tabs/browse_view.dart';
import 'package:streamo/view/tabs/discover_view.dart';
import 'package:streamo/view/tabs/home_view.dart';

import '../config/s.dart';

class MainView extends StatefulWidget {
  const MainView();

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _selectedIndex = 0;
  late String tempLang;
  late String tempImgPath;
  late final _tabs;

  @override
  void initState() {
    super.initState();
    _selectedIndex = 0;
    _tabs = <Widget>[
      const HomeView(),
      const DiscoverView(),
      const BrowseView(),
      const AccountView(),
    ];
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _onItemTabbed(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: S.colors.white,
      body: Center(
        child: PageTransitionSwitcher(
          transitionBuilder: (child, primaryAnimation, secondaryAnimation) {
            return FadeThroughTransition(
              animation: primaryAnimation,
              secondaryAnimation: secondaryAnimation,
              fillColor: S.colors.mainBackgroundColor,
              child: child,
            );
          },
          child: _tabs[_selectedIndex],
        ),
      ),
      bottomNavigationBar: buildNavBar(),
    );
  }

  buildNavBar() {
    return CustomNavigationBar(
      iconSize: 30.0,
      selectedColor: S.colors.themeIndigo,
      strokeColor: Colors.transparent,
      blurEffect: false,
      isFloating: false,
      scaleFactor: 0.01,
      elevation: 10,
      unSelectedColor: S.colors.themeGrey,
      backgroundColor: S.colors.mainBackgroundColor,
      items: [
        CustomNavigationBarItem(
          icon: const Icon(Octicons.home),
          title: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text("Home", style: S.textStyles.mediumGrey),
          ),
        ),
        CustomNavigationBarItem(
          icon: const Icon(Ionicons.ios_compass_outline),
          title: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text("Discover", style: S.textStyles.mediumGrey),
          ),
        ),
        CustomNavigationBarItem(
          icon: const Icon(Ionicons.newspaper_outline),
          title: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text("Browse", style: S.textStyles.mediumGrey),
          ),
        ),
        CustomNavigationBarItem(
          icon: const Icon(Feather.user),
          title: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text("Account", style: S.textStyles.mediumGrey),
          ),
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
    );
  }
}
