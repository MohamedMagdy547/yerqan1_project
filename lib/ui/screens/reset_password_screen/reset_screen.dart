import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yerqan1_project/app/app_colors/app_colors.dart';
import 'package:yerqan1_project/ui/component/button_component/button_component.dart';
import 'package:yerqan1_project/ui/screens/reset_password_screen/create_new_password.dart';


class ResetScreen extends StatelessWidget {
  const ResetScreen({super.key});

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
                    "Reset Password",
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
                    "Enter the email address you used when you joined",
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
                    "and we’ll send you instructions to reset your",
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
                    "password",
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
                      hintText: "enter your email",
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
                height: 32,
              ),
              ButtonComponent(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const CreatePassword(),));
                },
                height: 46,
                width: 314,
                text: "Request to reset password",
              ),
            ],
          ),
        ));
  }
}
