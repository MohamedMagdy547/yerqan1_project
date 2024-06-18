import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yerqan1_project/app/app_colors/app_colors.dart';
import 'package:yerqan1_project/ui/component/button_component/button_component.dart';
import 'package:yerqan1_project/ui/screens/reset_password_screen/success_screen.dart';


class CreatePassword extends StatelessWidget {
  const CreatePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        backgroundColor: AppColors.secondColor,
        body: Container(
          margin: const EdgeInsets.only(right: 21, left: 16, top: 63),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Create password",
                    style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: AppColors.black),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Text(
                    "set your new password so you can login and access",
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.black),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "heartfit",
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.black),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Container(
                width: 320,
                height: 50,
                child: TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColors.lightGray,
                      prefixIcon:
                          const Icon(Icons.lock, color: Color(0XFF797979)),
                      suffixIcon: const Icon(Icons.remove_red_eye,
                          color: Color(0XFF797979)),
                      hintText: "New Password",
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
              const SizedBox(
                height: 25,
              ),
              Container(
                width: 320,
                height: 50,
                child: TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColors.lightGray,
                      prefixIcon: const Icon(
                        Icons.lock_open,
                        color: Color(0XFF797979),
                      ),
                      suffixIcon: const Icon(Icons.remove_red_eye,
                          color: Color(0XFF797979)),
                      hintText: "confirm your password",
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
              const SizedBox(
                height: 40,
              ),
              ButtonComponent(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SuccessScreen(),
                      ));
                },
                height: 46,
                width: 314,
                text: "Reset Password",
              ),
            ],
          ),
        ));
  }
}
