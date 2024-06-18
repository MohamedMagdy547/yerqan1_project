import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yerqan1_project/app/app_colors/app_colors.dart';
import 'package:yerqan1_project/app/app_images/app_images.dart';
import 'package:yerqan1_project/app/app_words/app_words.dart';
import 'package:yerqan1_project/ui/component/button_component/button_component.dart';


import '../../component/bar_component/bar_component.dart';
import '../login&signup_screen/login_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: AppColors.secondColor,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(right: 39,left: 39,top: 31),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 31,
                  ),
                  Image.asset(AppImage.firstImages),
                  const SizedBox(
                    height: 31,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Check your ",
                        style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: AppColors.thirdColor),
                      ),
                      Text(
                        "baby ...",
                        style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: AppColors.mainColor),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    AppWords.intro,
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0XFF242424)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ButtonComponent(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>  LoginScreen(),));
                  },text: "Sign in",),
                   SizedBox(
                    height: 31,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: GoogleFonts.roboto(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.thirdColor),
                      ),
                      Text(
                        " Log In",
                        style: GoogleFonts.roboto(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.mainColor),
                      )
                    ],
                  ),
                  SizedBox(height: 110,),
                  BarComponent(radius: 10,color: Color(0XFF242424),),


                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
