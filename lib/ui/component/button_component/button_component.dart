import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../app/app_colors/app_colors.dart';


class ButtonComponent extends StatelessWidget {
  String text;
  double height;
  double width;
  Function() onTap;


  ButtonComponent({
    super.key,
    this.text = "",
    this.height = 46,
    this.width = 282,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        alignment: Alignment.center,
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: AppColors.mainColor, borderRadius: BorderRadius.circular(50)),
        child: Text(
          text,
          style: GoogleFonts.roboto(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: AppColors.secondColor),
        ),
      ),
    );
  }
}

