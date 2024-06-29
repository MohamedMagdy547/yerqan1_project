import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yerqan1_project/app/app_colors/app_colors.dart';
import 'package:yerqan1_project/app/app_images/app_images.dart';
import 'package:yerqan1_project/ui/component/button_component/button_component.dart';
import 'package:yerqan1_project/ui/questoin1_screen/qu1.dart';


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
                const SizedBox(
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
                const SizedBox(
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
                        const SizedBox(
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
                                  const EdgeInsets.only(left: 40, right: 40),
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
                        const SizedBox(
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
                                  const EdgeInsets.only(left: 40, right: 40),
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
                const SizedBox(
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
                        const SizedBox(
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
                                  const EdgeInsets.only(left: 40, right: 40),
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
                        const SizedBox(
                          height: 4,
                        ),
                        Container(
                            width: 161,
                            height: 41,

                            child: DropdownButtonFormField<String>(
                              icon: const Icon(
                                Icons.keyboard_arrow_down_sharp,
                                color: AppColors.black,
                              ),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: AppColors.lightGray,
                                contentPadding: const EdgeInsets.only(
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
                                          style: const TextStyle(fontSize: 15),
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
                const SizedBox(
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
                        const SizedBox(
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
                                  const EdgeInsets.only(left: 40, right: 40),
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
                        const SizedBox(
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
                                  const EdgeInsets.only(left: 40, right: 40),
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

              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar:Padding(
        padding: const EdgeInsets.only(right: 38,left: 38,bottom: 38),
        child: ButtonComponent(
          onTap: () {
            if (formkey.currentState?.validate() == true) {
              formkey.currentState?.save();
              Navigator.push(context, MaterialPageRoute(builder: (context) =>const Quest1()));
            } else {
              print("Invalid");
            }
          },
          height: 46,
          width: 285,
          text: "Submit and Continue",
        ),
      ),


    );
  }
}
