import 'package:flutter/material.dart';

import '../screens/main/main_screen.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(child: Image.asset(
              "assets/images/logo.png",
            )
            ),
            DrawerListTile(
              title: "Dashboard",
              svgSrc: "assets/icons/menu_dashbord.svg",
              press: (){},
            ),
            DrawerListTile(
              title: "Transection",
              svgSrc: "assets/icons/menu_tran.svg",
              press: (){},
            ),
            DrawerListTile(
              title: "Task",
              svgSrc: "assets/icons/menu_task.svg",
              press: (){},
            ),

          ],
        ),
      ),
    );
  }
}