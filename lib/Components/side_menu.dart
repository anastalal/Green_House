import 'package:flutter/material.dart';
import 'package:green_house/Screens/AboutUsPage.dart';
import 'package:green_house/Screens/ContactUsPage.dart';
import 'package:green_house/Screens/TermsAndConditionsPage.dart';
import 'package:green_house/Screens/settings_screen.dart';
import 'package:green_house/services/auth.dart';
import 'package:green_house/services/checkInternetConnection.dart';
import 'package:ternav_icons/ternav_icons.dart';

import 'package:green_house/Screens/config/constant.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AuthService _auth = new AuthService();
    return Drawer(
      width: MediaQuery.of(context).size.width / 1.5,
      child: ListView(
        shrinkWrap: true,
        children: [
          SizedBox(
            height: 100,
            child: DrawerHeader(
                child: Image.asset(
              "lib/img/logo.png",
            )),
          ),
          DrawerListTile(
            icon: TernavIcons.lightOutline.qustion,
            title: "About Us",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        AboutUsPage()), // استخدم MaterialPageRoute وقم بتمرير الملف الجديد هنا
              );
            },
          ),
          DrawerListTile(
            icon: TernavIcons.lightOutline.play_square,
            title: "Contact",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        ContactUsPage()), // استخدم MaterialPageRoute وقم بتمرير الملف الجديد هنا
              );
            },
          ),
          DrawerListTile(
            icon: TernavIcons.lightOutline.discovery,
            title: "Terms & Conditions",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        TermsAndConditions()), // استخدم MaterialPageRoute وقم بتمرير الملف الجديد هنا
              );
            },
          ),
          // DrawerListTile(
          //   icon: TernavIcons.lightOutline.chat,
          //   title: "Message",
          //   onTap: () {},
          // ),
          DrawerListTile(
            icon: TernavIcons.lightOutline.logout,
            title: "Logout",
            onTap: () async {
              await checkInternetConnection(context);
              await _auth.signOut();
            },
          ),
          const SizedBox(
            height: 10,
          ),
          Image.asset(
            "lib/img/help.png",
            height: 150,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            margin: const EdgeInsets.all(24),
            padding: const EdgeInsets.all(defaultPadding),
            decoration: BoxDecoration(
                color: kLightBlue, borderRadius: BorderRadius.circular(15)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text("Upgrade your plan",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Go to Pro", style: TextStyle(color: kDarkBlue)),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          border: Border.all(color: kDarkBlue),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(
                          Icons.keyboard_double_arrow_right_rounded,
                          color: kDarkBlue,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      horizontalTitleGap: 0,
      leading: Icon(
        icon,
        color: Colors.grey,
        size: 18,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.grey),
      ),
    );
  }
}
