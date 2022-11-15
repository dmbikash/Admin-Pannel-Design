import 'package:flutter/material.dart';
import 'package:tour_plan_admin/constants.dart';
import 'package:tour_plan_admin/responsive.dart';

import '../../../models/MyFiles.dart';
import 'file_info_card.dart';
import 'grid_view_builder_grid.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("My files"),
            ElevatedButton.icon(
              onPressed: (){},
              icon: Icon(Icons.add),
              label: Text("Add"),
            ),
          ],
        ),
      SizedBox(height: defaultPadding,),

      Responsive(

          mobile: GridViewBuilderGrid(
             crossAxisCount: _size.width<850? 2 : 4,
             childAspectRatio:  _size.width<850? 1: 1.4,
          ),
          tablet: GridViewBuilderGrid(
            crossAxisCount: _size.width<1400? 3 : 4,
            childAspectRatio:  _size.width<1400? 1 : 1.4,
          ),
          desktop: GridViewBuilderGrid(
            childAspectRatio: _size.width<1400? 1.1 : 1.4,

          ),

        
      ),

      ],
    );
  }
}


