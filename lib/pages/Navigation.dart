import 'package:cms_final/pages/Home.dart';
import 'package:cms_final/pages/Profile.dart';
import 'package:cms_final/pages/myCourses.dart';
import 'package:cms_final/pages/register.dart';
import 'package:cms_final/pages/semesters.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

 class Navbar extends StatelessWidget {
     Navbar({Key? key}) : super(key: key);
   int currentIndex = 2;
   late PersistentTabController controller =
   PersistentTabController(initialIndex: currentIndex);

   //login?signUp
   // List<String> title = ["Login", "Sign Up"];
   // TextEditingController userController = TextEditingController();
   // TextEditingController passController = TextEditingController();
   // TextEditingController confirmPassController = TextEditingController();
   // TextEditingController emailController = TextEditingController();

   List<Widget> screens() {
     return [

       const Prof(),
       const register(),
       const Home(),
       const MyCourses(),
       const Semesters(),
     ];
   }

   List<PersistentBottomNavBarItem> navBarsItems() {
     return [
       PersistentBottomNavBarItem(
         icon: const Icon(Icons.account_circle_outlined),
         iconSize: 30,
         activeColorPrimary: Colors.blue,
         inactiveColorPrimary: Colors.grey[300],
       ),
       PersistentBottomNavBarItem(
         icon: const Icon(Icons.add),
         iconSize: 30,
         activeColorPrimary: Colors.blue,
         inactiveColorPrimary: Colors.grey[300],
       ),
       PersistentBottomNavBarItem(
         icon: const Icon(Icons.home),
         iconSize: 30,
         activeColorPrimary: Colors.blue,
         inactiveColorPrimary: Colors.grey[300],
       ),
       PersistentBottomNavBarItem(
         icon: const Icon(Icons.menu_book),
         iconSize: 30,
         activeColorPrimary: Colors.blue,
         inactiveColorPrimary: Colors.grey[300],
       ),
       PersistentBottomNavBarItem(
         icon: const Icon(Icons.calendar_month_outlined),
         iconSize: 30,
         activeColorPrimary:Colors.blue,
         inactiveColorPrimary: Colors.grey[300],
       ),
     ];
   }
   @override
   Widget build(BuildContext context) {
     return PersistentTabView(
       context,
       controller: controller,
       screens: screens(),
       items: navBarsItems(),
       confineInSafeArea: true,
       backgroundColor: Colors.black,
       // Default is Colors.white.
       handleAndroidBackButtonPress: true,
       // Default is true.
       resizeToAvoidBottomInset: true,
       // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
       stateManagement: true,
       // Default is true.
       hideNavigationBarWhenKeyboardShows: true,
       // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
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
         duration: Duration(milliseconds: 100),
       ),
       navBarStyle: NavBarStyle
           .style14, // Choose the nav bar style with this property.
     );
   }
   }