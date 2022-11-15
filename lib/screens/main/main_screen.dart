import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tour_plan_admin/responsive.dart';
import 'package:tour_plan_admin/screens/dashboard/dashboard_screen.dart';

import '../../components/side_menu.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
         //mainAxisAlignment: MainAxisAlignment.start,

          children: [
           if(Responsive.isDesktop(context))
            Expanded(
              child: SideMenu(),
            ),
            Expanded(
              flex: 5,
              child: DashboardScreen(),
            ),


          ],
        ),
      ),
    );
  }
}



class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.press,
    required this.svgSrc,
    required this.title,

  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0,
      leading: SvgPicture.asset(svgSrc,
      color: Colors.white60,
      ),
      title: Text(title),
    );
  }
}


