import 'package:flutter/material.dart';

class DrawerClass {
  static Widget drawerWidget = Drawer(
    child: ListView(
      children: [
        const DrawerHeader(
            child: CircleAvatar(
          backgroundImage: NetworkImage(
              "https://preview.keenthemes.com/metronic-v4/theme/assets/pages/media/profile/profile_user.jpg"),
        )),
        ListTile(
          leading: const Icon(Icons.home_filled),
          title: const Text("H O M E"),
          onTap: () {
            // Update the state of the app.
            // ...
          },
        ),
        ListTile(
          leading: const Icon(Icons.favorite_border),
          title: const Text("F A V O U R I T E S"),
          onTap: () {
            // Update the state of the app.
            // ...
          },
        ),
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text("S E T T I N G S"),
          onTap: () {
            // Update the state of the app.
            // ...
          },
        ),
        ListTile(
          leading: const Icon(Icons.directions_run),
          title: const Text("O R D E R S"),
          onTap: () {
            // Update the state of the app.
            // ...
          },
        ),
      ],
    ),
  );
}
