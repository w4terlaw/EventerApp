import 'package:eventer_app/common/my_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import '/common/app_colors.dart';
import '/common/localization.dart';
import '../pages/bookings/bookings.dart';
import '../pages/favorite_organizers/favorite_organizers.dart';
import '../pages/home/home.dart';
import '../pages/profile/profile.dart';

class Navbar extends StatelessWidget {
  Navbar({super.key});

  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  PersistentBottomNavBarItem _navBarItem(
      BuildContext context, String iconAsset, String title) {
    double iconSize = 24;
    return PersistentBottomNavBarItem(
      textStyle: appFont(
        textStyle: Theme.of(context).textTheme.labelMedium,
        fontWeight: FontWeight.w400,
        fontSize: 12,
      ),
      icon: Image.asset(
        iconAsset,
        color: AppColors.navbarColor,
        height: iconSize,
        width: iconSize,
      ),
      inactiveIcon: Image.asset(
        iconAsset,
        color: AppColors.inactiveColorNavBar,
        height: iconSize,
        width: iconSize,
      ),
      title: title,
      activeColorSecondary: AppColors.navbarColor,
      activeColorPrimary: AppColors.navbarColor,
      inactiveColorPrimary: AppColors.inactiveColorNavBar,
    );
  }

  List<PersistentBottomNavBarItem> _navBarsItems(context) {
    return [
      _navBarItem(context, 'assets/icons/home.png', L10n.exploreNavBar),
      _navBarItem(context, 'assets/icons/tickets.png', L10n.myTicketsNavBar),
      _navBarItem(context, 'assets/icons/favorite_organizers.png',
          L10n.favoritesNavBar),
      _navBarItem(context, 'assets/icons/profile.png', L10n.profileNavBar),
    ];
  }

  List<Widget> _buildScreens() {
    return [
      const HomePage(),
      const BookingsPage(),
      const FavoriteOrganizersPage(),
      const ProfilePage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(context),
      confineInSafeArea: true,
      navBarHeight: 70,
      // padding: NavBarPadding.all(16),
      // backgroundColor: AppColors.navbarColor,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      // padding: const NavBarPadding.all(24),
      decoration: NavBarDecoration(
        // borderRadius: BorderRadius.only(
        //   topLeft: Radius.circular(16),
        //   topRight: Radius.circular(16),
        // ),

        // colorBehindNavBar: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 10,
            blurRadius: 100,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.simple, // Choose the nav bar style with this property.
    );
  }
}

class Plug extends StatelessWidget {
  final int number;

  const Plug({Key? key, required this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        'Screen $number',
        style: Theme.of(context).textTheme.displayMedium,
      )),
    );
  }
}
