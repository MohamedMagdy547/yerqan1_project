import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yerqan1_project/app/app_colors/app_colors.dart';

class BarComponent extends StatelessWidget {
  double radius;
  Color color;

   BarComponent({
    super.key,
     this.radius = 8,
     this.color = AppColors.thirdColor
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 134,
      height: 5,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(radius)),
    );
  }
}
