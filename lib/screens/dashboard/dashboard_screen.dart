import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tour_plan_admin/constants.dart';
import 'package:tour_plan_admin/models/RecentFile.dart';
import 'package:tour_plan_admin/responsive.dart';
import 'components/header.dart';
import 'components/my_files.dart';
import 'components/recent_file_table.dart';
import 'components/storage_details.dart';


class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(defaultPadding),
          child: Column(
            children: [

              Header(),
              // Container(
              //   height: 100,
              //   color: Colors.red,
              // ),
              SizedBox(height: defaultPadding,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        MyFiles(),
                        SizedBox(height: defaultPadding,),
                        recentFileTable(),
                        /////responsive section
                        if(Responsive.isMobile(context))
                          SizedBox(height: defaultPadding,),

                        if(Responsive.isMobile(context))
                          Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10),
                            ),
                            color: secondaryColor,
                          ),
                          child: StorageDetails(),
                        ),







                      ],
                    ),
                  ),
                  if(!Responsive.isMobile(context))
                    SizedBox(width: defaultPadding,),
                  if(!Responsive.isMobile(context))
                  Expanded( // storage details
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.all(defaultPadding),
                      height: 600,

                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(10),),),
                      child: StorageDetails(),

                    ),
                  ),
                ],
              ),
              SizedBox(height: defaultPadding,),

              // Container(
              //   padding: EdgeInsets.all(defaultPadding),
              //   decoration: BoxDecoration(
              //     color: secondaryColor,
              //     borderRadius: BorderRadius.all(Radius.circular(10),
              //     ),
              //   ),
              // ),
            ],
          ),
        )
    );
  }

}


