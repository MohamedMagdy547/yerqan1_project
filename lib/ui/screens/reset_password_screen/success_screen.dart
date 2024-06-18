import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yerqan1_project/app/app_colors/app_colors.dart';
import 'package:yerqan1_project/app/app_images/app_images.dart';


class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: AppColors.secondColor,
      body:Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 108,right: 110,left: 110),
              child: Image.asset(AppImage.success),
            ),
            Container(
              margin: EdgeInsets.only(top: 32,right: 71,left: 71),
              child: Column(

                children: [
                  Text(
                    "Password changed ",
                    style: GoogleFonts.roboto(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: AppColors.black),
                  ),
                  Text(
                    "succesfully . ",
                    style: GoogleFonts.roboto(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: AppColors.black),
                  ),
                  Text(
                    "your password has been changed successfully,",
                    style: GoogleFonts.roboto(
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                        color: AppColors.gray),
                  ),
                  Text(
                    "we will let you know if there are more problems",
                    style: GoogleFonts.roboto(
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                        color: AppColors.gray),
                  ),
                  Text(
                    " with your account",
                    style: GoogleFonts.roboto(
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                        color: AppColors.gray),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
