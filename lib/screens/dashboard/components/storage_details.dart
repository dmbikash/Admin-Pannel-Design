import 'package:flutter/material.dart';
import 'package:tour_plan_admin/screens/dashboard/components/storageInfoCard.dart';

import '../../../constants.dart';
import 'chart.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Storage Details",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        Chart(),
        StorageInfoCard(
          title: "Document Files",
          amountOfFiles: '25 GB',
          numOfFiles: 12345,
          svgPic: 'assets/icons/Documents.svg' ,
        ),
        SizedBox(height: defaultPadding,),
        StorageInfoCard(
          title: "Image Files",
          amountOfFiles: '120 GB',
          numOfFiles: 34512345,
          svgPic: 'assets/icons/media.svg' ,
        ),
        SizedBox(height: defaultPadding,),
        StorageInfoCard(
          title: "Other Files",
          amountOfFiles: '50 GB',
          numOfFiles: 2345,
          svgPic: 'assets/icons/folder.svg' ,
        ),

      ],
    );
  }
}

