import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yerqan1_project/app/app_colors/app_colors.dart';
import 'package:yerqan1_project/app/app_images/app_images.dart';
import 'package:yerqan1_project/ui/component/button_component/button_component.dart';
import 'package:yerqan1_project/ui/screens/first_screen/first_screen.dart';
import 'package:yerqan1_project/ui/screens/login&signup_screen/signup_screen.dart';


import '../reset_password_screen/reset_screen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formkey = GlobalKey<FormState>();

  final emailController = TextEditingController();

   final passController = TextEditingController();
  String? email;
  bool _isVisible = false;
   String? pass;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondColor,
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding:
                      EdgeInsets.only(right: 84, left: 84, top: 50, bottom: 40),
                  child: SizedBox(
                    height: 42,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Y",
                          style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.w500,
                            color: AppColors.mainColor,
                          ),
                        ),
                        Text(
                          " E",
                          style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.w500,
                            color: AppColors.mainColor,
                          ),
                        ),
                        Text(
                          " R",
                          style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.w500,
                            color: AppColors.thirdColor,
                          ),
                        ),
                        Text(
                          " Q",
                          style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.w500,
                            color: AppColors.thirdColor,
                          ),
                        ),
                        Text(
                          " A",
                          style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.w500,
                            color: AppColors.thirdColor,
                          ),
                        ),
                        Text(
                          " N",
                          style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.w500,
                            color: AppColors.thirdColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Text(
                  "Login to your Account",
                  style: GoogleFonts.roboto(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: const Color(0XFF242424)),
                ),
                Container(
                  width: 320,
                  height: 50,
                  margin: const EdgeInsets.only(right: 20, left: 20, top: 46),
                  child: TextFormField(
                    onSaved: (v) {
                      email = v;
                    },
                    cursorColor: Colors.blue,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Empty Field";
                      } else if (!value.contains("@")) {
                        return "must have contain @";
                      } else if (!value.contains(".com")) {
                        return "must have .com";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.done,
                    controller: emailController,
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
                            color: Colors.blue,
                          )),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.redAccent,
                          )),
                      focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.red,
                          )),
                    ),
                  ),
                ),
                Container(
                  width: 320,
                  height: 50,
                  margin: const EdgeInsets.only(right: 20, left: 20, top: 25),
                  child: TextFormField(
                    onSaved: (v) {
                      pass = v;
                    },
                    cursorColor: Colors.blue,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Empty Field";
                      }else if(value.isAlphabetOnly ){
                        return "must have contain 8-16 num";
                      }else if (value.isNumericOnly) {
                        return "must have at least 1 char";
                      }
                      return null;
                    },

                    keyboardType: TextInputType.emailAddress,
                     controller: passController,
                    obscureText: !_isVisible,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _isVisible = !_isVisible;
                          });
                        },
                        icon: _isVisible ? const Icon(Icons.visibility,color: Colors.blue,) : const Icon(Icons.visibility_off,color: Colors.black,),),
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
                            color: Colors.blue,
                          )),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.redAccent,
                          )),
                      focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.red,
                          )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 11,
                    right: 30,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ResetScreen(),
                              ));
                        },
                        child: Text(
                          "Forget Password?",
                          style: GoogleFonts.inter(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: AppColors.mainColor),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 11,
                ),
                ButtonComponent(
                  onTap: () {
                    if (formkey.currentState?.validate() == true) {
                      formkey.currentState?.save();
                      print(email);
                      emailController.clear();
                      print(pass);
                      passController.clear();
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>const FirstScreen() ,));
                    } else {
                      print("Invalid");
                    }
                  },
                  text: "Sign in",
                ),
                const SizedBox(
                  height: 45,
                ),
                Text(
                  "or sign in with",
                  style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black),
                ),
                const SizedBox(
                  height: 23,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(right: 20, left: 20, bottom: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 100,
                        height: 50,
                        child: Image.asset(AppImage.googleIcon),
                        decoration: BoxDecoration(
                            color: AppColors.lightGray,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Container(
                        width: 100,
                        height: 50,
                        child: Image.asset(AppImage.faceIcon),
                        decoration: BoxDecoration(
                            color: AppColors.lightGray,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Container(
                        width: 100,
                        height: 50,
                        child: Image.asset(AppImage.xIcon),
                        decoration: BoxDecoration(
                            color: AppColors.lightGray,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 81),
                  child: Row(
                    children: [
                      Text(
                        "Don’t have an account?  ",
                        style: GoogleFonts.roboto(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColors.black),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignUpScreen(),
                              ));
                        },
                        child: Text("Sign up",
                            style: GoogleFonts.roboto(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: AppColors.mainColor)),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
