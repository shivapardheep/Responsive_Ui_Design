import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: secondaryColor,
      child: ListView(
        children: [
          DrawerHeader(child: Image.asset("assets/images/logo.png")),
          ListTile(
            hoverColor: bgColor,
            leading: SvgPicture.asset(
              "assets/icons/menu_dashbord.svg",
              color: Colors.white54,
              height: 20,
              width: 20,
            ),
            title: const Text(
              "Dashboard",
              style: TextStyle(color: Colors.white54),
            ),
            onTap: () {},
          ),
          ListTile(
            hoverColor: bgColor,
            leading: SvgPicture.asset(
              "assets/icons/menu_tran.svg",
              color: Colors.white54,
              height: 20,
              width: 20,
            ),
            title: const Text(
              "Transaction",
              style: TextStyle(color: Colors.white54),
            ),
            onTap: () {},
          ),
          ListTile(
            hoverColor: bgColor,
            leading: SvgPicture.asset(
              "assets/icons/menu_task.svg",
              color: Colors.white54,
              height: 20,
              width: 20,
            ),
            title: const Text(
              "Task",
              style: TextStyle(color: Colors.white54),
            ),
            onTap: () {},
          ),
          ListTile(
            hoverColor: bgColor,
            leading: SvgPicture.asset(
              "assets/icons/menu_doc.svg",
              color: Colors.white54,
              height: 20,
              width: 20,
            ),
            title: const Text(
              "Documents",
              style: TextStyle(color: Colors.white54),
            ),
            onTap: () {},
          ),
          ListTile(
            hoverColor: bgColor,
            leading: SvgPicture.asset(
              "assets/icons/menu_store.svg",
              color: Colors.white54,
              height: 20,
              width: 20,
            ),
            title: const Text(
              "Store",
              style: TextStyle(color: Colors.white54),
            ),
            onTap: () {},
          ),
          ListTile(
            hoverColor: bgColor,
            leading: SvgPicture.asset(
              "assets/icons/menu_notification.svg",
              color: Colors.white54,
              height: 20,
              width: 20,
            ),
            title: const Text(
              "Notification",
              style: TextStyle(color: Colors.white54),
            ),
            onTap: () {},
          ),
          ListTile(
            hoverColor: bgColor,
            leading: SvgPicture.asset(
              "assets/icons/menu_profile.svg",
              color: Colors.white54,
              height: 20,
              width: 20,
            ),
            title: const Text(
              "Profile",
              style: TextStyle(color: Colors.white54),
            ),
            onTap: () {},
          ),
          ListTile(
            hoverColor: bgColor,
            leading: SvgPicture.asset(
              "assets/icons/menu_setting.svg",
              color: Colors.white54,
              height: 20,
              width: 20,
            ),
            title: const Text(
              "Settings",
              style: TextStyle(color: Colors.white54),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
