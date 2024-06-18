import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:yerqan1_project/app/app_colors/app_colors.dart';
import 'package:yerqan1_project/ui/screens/splash&intro_screen/intro_screen.dart';

class SpalshScreen extends StatelessWidget {
  const SpalshScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 1), () { Get.to(const IntroScreen());});

    return Scaffold(
        backgroundColor: AppColors.mainColor,
        appBar: AppBar(
          backgroundColor: AppColors.mainColor,
          elevation: 0,
        ),
        body: const Center(
          child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Y ",
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.w500,
                          color: AppColors.secondColor,
                        ),
                      ),
                      Text(
                        "E ",
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.w500,
                          color: AppColors.secondColor,
                        ),
                      ),
                      Text(
                        "R ",
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.w500,
                          color: AppColors.thirdColor,
                        ),
                      ),
                      Text(
                        "Q ",
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.w500,
                          color: AppColors.thirdColor,
                        ),
                      ),
                      Text(
                        "A ",
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.w500,
                          color: AppColors.thirdColor,
                        ),
                      ),
                      Text(
                        "N",
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.w500,
                          color: AppColors.thirdColor,
                        ),
                      ),
                    ],
                  ),
                ),
          );
  }
}
