import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tour_plan_admin/constants.dart';

import '../../../responsive.dart';


class Header extends StatefulWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {

    if(Responsive.isMobile(context)){
      return mobileHeader();
    }else{
      return tabHeader() ;
    }
  }

  Row tabHeader() {
    return Row(
    children: [
      Text("Dashboard+"),
      Spacer(),
      Expanded(
        child: SearchField(),
      ),
      ProfileCard(),
    ],
  );
  }

  Column mobileHeader() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Dashboard"),
            ProfileCard(),
          ],
        ),
        SizedBox(height: defaultPadding,),
        //Spacer(),
        Row(
          children: [
            Expanded(
              child: SearchField(),
            ),
          ],
        ),

      ],
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: defaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding/2,
      ),
      decoration: BoxDecoration(
        color: secondaryColor,
        border: Border.all(color: Colors.white10),
        borderRadius: BorderRadius.all(Radius.circular(10),),


      ),
      child: Row(
        children: [
          Image.asset("assets/images/profile_pic.png", height: 38,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(" Esho Julie "),
          ),
          Icon(Icons.keyboard_arrow_down),
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(

      decoration: InputDecoration(
        hintText: "Search",
        fillColor: secondaryColor,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        suffixIcon: InkWell(
          onTap: (){},
          child: Container(

            padding: EdgeInsets.all(defaultPadding*.75),
            margin: EdgeInsets.all(defaultPadding/2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: primaryColor,
            ),
            child: SvgPicture.asset("assets/icons/Search.svg"),

          ),
        ),



      ),

    );
  }
}
