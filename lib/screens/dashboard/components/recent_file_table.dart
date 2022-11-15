import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../models/RecentFile.dart';

Container recentFileTable() {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(defaultPadding),
    decoration: BoxDecoration(
      color: secondaryColor,
      borderRadius: BorderRadius.all(Radius.circular(10),
      ),
    ),
    child: Column(
      children: [
        Text("Recent Files"),
        SizedBox(
          width: double.infinity,
          child: DataTable(
            horizontalMargin: 0,
            columns: [

              DataColumn(
                label: Text("File Name"),
              ),
              DataColumn(
                label: Text("Date"),
              ),
              DataColumn(
                label: Text("Size"),
              ),

            ],
            rows:
            List.generate(demoRecentFiles.length,
                  (index) => recentFileDataRow(
                  demoRecentFiles[index]),
            ),

          ),
        ),


      ],
    ),
  );
}

DataRow recentFileDataRow(RecentFile fileInfo) {
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            // Text("yahoo"),
            SvgPicture.asset(fileInfo.icon),
          ],

        ),
      ),
      DataCell(Text(fileInfo.date),),
      DataCell(Text(fileInfo.size),),

    ],
  );
}
