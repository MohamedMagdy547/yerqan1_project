import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yerqan1_project/app/app_colors/app_colors.dart';
import 'package:yerqan1_project/app/app_images/app_images.dart';
import 'package:yerqan1_project/ui/component/button_component/button_component.dart';
import 'package:yerqan1_project/ui/screens/second_screen/second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGround,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 346,
                margin: const EdgeInsets.only(top: 64, left: 55, right: 55),
                padding: const EdgeInsets.only(
                    top: 27, right: 27, left: 27, bottom: 39),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(36),
                    // color: Colors.green,
                    border: Border.all(
                        color: AppColors.mainColor,
                        width: 4,
                        style: BorderStyle.solid),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.transparent,
                      )
                    ]),
                child: Image.asset(AppImage.itm2nan),
              ),
              const SizedBox(
                height: 67,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "if you want to",
                    style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: AppColors.black),
                  ),
                  Text(
                    " check your baby ",
                    style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: AppColors.mainColor),
                  ),
                  Text(
                    ", you can",
                    style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: AppColors.black),
                  ),
                ],
              ),
              Text(
                "click on start button .",
                style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: AppColors.black),
              ),
              const SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: ButtonComponent(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondScreen(),));
                  },
                  width: 236,
                  height: 46,
                  text: "Start",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
