  import 'package:flutter/material.dart';

  class ProgressBar extends StatelessWidget {

     ProgressBar({
      Key? key,
       required this.color,
       required this.percentage,
      required this.info,
    }) : super(key: key);

    var info;
     Color color;
     int percentage;


     @override
    Widget build(BuildContext context) {
    return Stack(
    children: [
    Container(
    width: double.infinity,
    height: 5,
    decoration: BoxDecoration(
    color: info.color.withOpacity(.1),
    borderRadius: BorderRadius.all(Radius.circular(10),
    ),
    ),
    ),
    LayoutBuilder(
    builder: (context, constraints) => Container(
    width: constraints.maxWidth*percentage*.01,
    height: 5,
    decoration: BoxDecoration(
    color: info.color.withOpacity(1),
    borderRadius: BorderRadius.all(Radius.circular(10),
    ),
    ),

    ),
    ),
    ],
    );
    }
  }
