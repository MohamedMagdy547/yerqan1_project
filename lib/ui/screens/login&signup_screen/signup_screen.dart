import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yerqan1_project/app/app_colors/app_colors.dart';
import 'package:yerqan1_project/app/app_images/app_images.dart';
import 'package:yerqan1_project/ui/component/button_component/button_component.dart';


class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondColor,
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Create Account",
                  style: GoogleFonts.roboto(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: const Color(0XFF242424)),
                ),
                SizedBox(height: 8,),
                Text(
                  "Fill your information below or register",
                  style: GoogleFonts.roboto(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: const Color(0XFF797979),
                  ),
                ),
                Text(
                  "with your social account",
                  style: GoogleFonts.roboto(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: const Color(0XFF797979),
                  ),
                ),
                Container(
                  width: 320,
                  height: 50,
                  margin: const EdgeInsets.only(right: 20, left: 20, top: 25),
                  child: TextFormField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors.lightGray,
                        hintText: "Name",
                        hintStyle: GoogleFonts.roboto(
                            color: AppColors.darkGray,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                            const BorderSide(color: AppColors.lightGray)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Colors.green,
                            ))),
                  ),
                ),
                Container(
                  width: 320,
                  height: 50,
                  margin: const EdgeInsets.only(right: 20, left: 20, top: 25),
                  child: TextFormField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors.lightGray,
                        hintText: "Email",
                        hintStyle: GoogleFonts.roboto(
                            color: AppColors.darkGray,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                            const BorderSide(color: AppColors.lightGray)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Colors.green,
                            ))),
                  ),
                ),
                Container(
                  width: 320,
                  height: 50,
                  margin: const EdgeInsets.only(right: 20, left: 20, top: 25),
                  child: TextFormField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors.lightGray,
                        hintText: "Password",
                        hintStyle: GoogleFonts.roboto(
                            color: AppColors.darkGray,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                            const BorderSide(color: AppColors.lightGray)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Colors.green,
                            ))),
                  ),
                ),
                Container(
                  width: 320,
                  height: 50,
                  margin: const EdgeInsets.only(right: 20, left: 20, top: 25),
                  child: TextFormField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors.lightGray,
                        hintText: "Confirm Password",
                        hintStyle: GoogleFonts.roboto(
                            color: AppColors.darkGray,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                            const BorderSide(color: AppColors.lightGray)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Colors.green,
                            ))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20,left: 15,top: 25),
                  child: ButtonComponent(onTap: () {},height: 46,width: 325,text: "Sign up",),
                ),
                SizedBox(height: 45,),
                Text(
                  "or sign in with",
                  style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.black),
                ),
                SizedBox(height: 26,),
                Padding(
                  padding: const EdgeInsets.only(right: 20,left: 20,bottom: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 100,
                        height: 50,
                        child: Image.asset(AppImage.googleIcon),
            
                        decoration: BoxDecoration(
                            color: AppColors.lightGray,
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 50,
                        child: Image.asset(AppImage.faceIcon),
            
                        decoration: BoxDecoration(
                            color: AppColors.lightGray,
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 50,
                        child: Image.asset(AppImage.xIcon),
            
                        decoration: BoxDecoration(
                            color: AppColors.lightGray,
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ],),
                ),
            
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}
