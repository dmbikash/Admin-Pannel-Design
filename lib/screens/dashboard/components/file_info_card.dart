import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'logo_more_vert.dart';
import 'progress_bar.dart';

class FileInfoCard extends StatelessWidget {
  var info;
   FileInfoCard({
    Key? key,
    required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container
      (
      height: defaultPadding*0,
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(

        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10),),
      ),
      child: Column(
        children: [
          Logo_MoreVert(info: info),
          Row(
            children: [
              Text(
                info.title,
                maxLines: 1,
                style: Theme.of(context).textTheme.subtitle1,
                  //overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
          ProgressBar(info: info,color: info.color,percentage: info.percentage),

        ],
      ),
    );
  }
}





