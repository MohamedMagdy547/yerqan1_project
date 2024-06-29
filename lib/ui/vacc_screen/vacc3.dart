import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:yerqan1_project/ui/vacc_screen/vacc1.dart';
import 'package:yerqan1_project/ui/vacc_screen/vacc2.dart';
import 'package:yerqan1_project/ui/vacc_screen/vacc_table.dart';

class Vacc3 extends StatelessWidget {
  const Vacc3({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 50.0, left: 20, bottom: 30),
              child: Text(
                "- Types of childhood vaccinations and their dates",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, bottom: 30),
              child: Text(
                "There are two types of childhood vaccinations according to their degree of importance in protecting the child :",
                style: TextStyle(
                  color: Color(0xff727272),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 50.0),
              child: CustomTypeContainer(
                  text: "1- Mandatory: ", color: Color(0xffe20807)),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 70.0, right: 30, top: 20),
              child: CustomContainer(
                isvacc3: true,
                text: "such as the diphtheria, tetanus, and polio vaccine.",
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 50.0, top: 15),
              child: CustomTypeContainer(
                  text: "2- Optional: ", color: Color(0xfff37b7c)),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 70.0, right: 30, top: 20),
              child: CustomContainer(
                isvacc3: true,
                text: "such as the chickenpox and rubella vaccine.",
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Text.rich(
                TextSpan(
                  children: <InlineSpan>[
                    const TextSpan(
                      text:
                          "To know all types of children vaccinations and the specific times for them.",
                      style: TextStyle(
                        color: Color(0xff727272),
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    TextSpan(
                        text: "Click here ?",
                        style: const TextStyle(
                            color: Color(0xff6d83a0),
                            fontSize: 15,
                            decoration: TextDecoration.underline),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        const VaccTable()));
                          }),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackNextButton(
                    text: "<- back",
                    onPressed: () {
                      Navigator.pop(context);
                    },
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

class CustomTypeContainer extends StatelessWidget {
  const CustomTypeContainer(
      {super.key, required this.text, required this.color});
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 140,
      decoration: ShapeDecoration(
        color: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
