import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yerqan1_project/app/app_colors/app_colors.dart';
import 'package:yerqan1_project/app/app_images/app_images.dart';
import 'package:yerqan1_project/ui/component/button_component/button_component.dart';
import 'package:yerqan1_project/ui/screens/question_screen/first_question_screen.dart';


class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final formkey = GlobalKey<FormState>();

  List<String> babyGender = ["Male", "Female"];
  String? selectedGender = "Female";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGround,
      appBar: AppBar(
        backgroundColor: AppColors.backGround,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppImage.login)

                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  textAlign: TextAlign.center,
                  "Fill the form below about you and your\n baby . ",
                  style: GoogleFonts.roboto(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: const Color(0XFF797979)),
                ),
                SizedBox(
                  height: 48,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Baby’s blood type",
                          style: GoogleFonts.roboto(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColors.black),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Container(
                          width: 161,
                          height: 41,
                          child: TextFormField(
                            onSaved: (v) {
                              v = v;
                            },
                            cursorColor: Colors.blue,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Required Field";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: AppColors.lightGray,
                              contentPadding:
                                  EdgeInsets.only(left: 40, right: 40),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                      color: AppColors.lightGray)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                    color: Colors.blue,
                                  )),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                    color: Colors.redAccent,
                                  )),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Mother’s blood type",
                          style: GoogleFonts.roboto(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColors.black),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Container(
                          width: 161,
                          height: 41,
                          child: TextFormField(
                            onSaved: (v) {
                              v = v;
                            },
                            cursorColor: Colors.blue,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Required Field";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: AppColors.lightGray,
                              contentPadding:
                                  EdgeInsets.only(left: 40, right: 40),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                      color: AppColors.lightGray)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                    color: Colors.blue,
                                  )),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                    color: Colors.redAccent,
                                  )),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Baby’s Age",
                          style: GoogleFonts.roboto(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColors.black),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        SizedBox(
                          width: 161,
                          height: 41,
                          child: TextFormField(
                            onSaved: (v) {
                              v = v;
                            },
                            cursorColor: Colors.blue,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Required Field";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: AppColors.lightGray,
                              contentPadding:
                                  EdgeInsets.only(left: 40, right: 40),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                      color: AppColors.lightGray)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                    color: Colors.blue,
                                  )),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                    color: Colors.redAccent,
                                  )),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Baby’s Gender",
                          style: GoogleFonts.roboto(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColors.black),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Container(
                            width: 161,
                            height: 41,

                            child: DropdownButtonFormField<String>(
                              icon: Icon(
                                Icons.keyboard_arrow_down_sharp,
                                color: AppColors.black,
                              ),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: AppColors.lightGray,
                                contentPadding: EdgeInsets.only(
                                  left: 16,right: 16
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: const BorderSide(
                                        color: AppColors.lightGray)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: const BorderSide(
                                      color: Colors.blue,
                                    )),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: const BorderSide(
                                      color: Colors.redAccent,
                                    )),
                                focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: const BorderSide(
                                      color: Colors.red,
                                    )),
                              ),
                              value: selectedGender,
                              items: babyGender
                                  .map((item) => DropdownMenuItem(
                                        value: item,
                                        child: Text(
                                          item,
                                          style: TextStyle(fontSize: 15),
                                        ),
                                      ))
                                  .toList(),
                              onChanged: (item) {
                                setState(() {
                                  selectedGender = item;
                                });
                              },
                            )),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Baby’s Height",
                          style: GoogleFonts.roboto(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColors.black),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Container(
                          width: 161,
                          height: 41,
                          child: TextFormField(
                            onSaved: (v) {
                              v = v;
                            },
                            cursorColor: Colors.blue,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Required Field";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: AppColors.lightGray,
                              contentPadding:
                                  EdgeInsets.only(left: 40, right: 40),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                      color: AppColors.lightGray)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                    color: Colors.blue,
                                  )),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                    color: Colors.redAccent,
                                  )),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Baby’s Weight",
                          style: GoogleFonts.roboto(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColors.black),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Container(
                          width: 161,
                          height: 41,
                          child: TextFormField(
                            onSaved: (v) {
                              v = v;
                            },
                            cursorColor: Colors.blue,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Required Field";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: AppColors.lightGray,
                              contentPadding:
                                  EdgeInsets.only(left: 40, right: 40),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                      color: AppColors.lightGray)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                    color: Colors.blue,
                                  )),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                    color: Colors.redAccent,
                                  )),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 37,
                ),
                ButtonComponent(
                  onTap: () {
                    if (formkey.currentState?.validate() == true) {
                      formkey.currentState?.save();
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>const FirstQuestionScreen() ,));
                    } else {
                      print("Invalid");
                    }
                  },
                  height: 46,
                  width: 285,
                  text: "Submit and Continue",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
