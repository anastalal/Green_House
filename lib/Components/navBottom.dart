import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:green_house/Screens/home/AiPage.dart';
import 'package:green_house/Screens/home/main_screen.dart';
import 'package:green_house/Screens/settings_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class NavBottom extends StatelessWidget {
  // const NavBottom() : super();
// PersistentTabController _controller;

// _controller = PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller;

    _controller = PersistentTabController(initialIndex: 0);
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,

      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
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
          NavBarStyle.style7, // Choose the nav bar style with this property.
    );
  }
}

List<Widget> _buildScreens() {
  return [MainScreen(), AiPage(), Settings()];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: Image.asset("lib/img/small_logo.png"),
      inactiveIcon: Image.asset("lib/img/small_logo2.png"),
      title: ("Home"),
      activeColorSecondary: CupertinoColors.white,
      // opacity: 0,
      activeColorPrimary: const Color(0xFF51853F),
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: Image.asset("lib/img/ai_logo.png"),
      inactiveIcon: Image.asset("lib/img/ai_icon.png"),
      activeColorSecondary: CupertinoColors.white,
      // opacity: 0,
      activeColorPrimary: const Color(0xFF51853F),
      title: ("AI"),
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(CupertinoIcons.settings),
      activeColorSecondary: CupertinoColors.white,
      // opacity: 0,
      activeColorPrimary: const Color(0xFF51853F),
      title: ("Settings"),
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
  ];
}

// class myHome extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // body: SingleChildScrollView(
//       body: Container(
//         width: MediaQuery.of(context).size.width,
//         height: MediaQuery.of(context).size.height - 50,
//         clipBehavior: Clip.antiAlias,
//         decoration: BoxDecoration(color: Color(0xFFE2FFD1)),
//         child: Column(
//           children: [
//             ListView(
//               children: [
//                 Container(
//                   height: 100,
//                   color: Colors.red,
//                 ),
//                 Container(
//                   height: 300,
//                   color: Colors.green,
//                 ),
//               ],
//             ),
//             Container(
//               width: 435,
//               height: 532,
//               decoration: ShapeDecoration(
//                 color: Colors.white,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(60),
//                 ),
//               ),
//             ),
//           ],
//         ),
//         // )
//       ),
//     );
//   }
// }
