import 'package:flutter/material.dart';
import 'package:yerqan1_project/app/app_images/app_images.dart';
import 'package:yerqan1_project/ui/good_result/choose_screen.dart';
import 'package:yerqan1_project/ui/good_result/custom_image_background.dart';

class NewbornAdvicesScreen extends StatelessWidget {
  const NewbornAdvicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomImageBackground(
      ratio: 0.38,
      img: AppImage.baby,
      widget: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          children: [
            const Center(
                child: Text(
              "Newborn Jaundice Prevention",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )),
            const SizedBox(
              height: 20,
            ),
            const Text.rich(
              TextSpan(
                children: <InlineSpan>[
                  TextSpan(
                    text: "There ",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  TextSpan(
                    text: "isn't much ",
                    style: TextStyle(
                      color: Color(0xff608bb9),
                      fontSize: 15,
                    ),
                  ),
                  TextSpan(
                    text:
                        "you can do to prevent the typical jaundice in newborns. But you can help move it along by ",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  TextSpan(
                    text: "being sure ",
                    style: TextStyle(
                      color: Color(0xff608bb9),
                      fontSize: 15,
                    ),
                  ),
                  TextSpan(
                    text: "your baby is ",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  TextSpan(
                    text: "well fed. ",
                    style: TextStyle(
                      color: Color(0xff608bb9),
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const CustomPreventContainer(
              widget: Text.rich(
                TextSpan(
                  children: <InlineSpan>[
                    TextSpan(
                      text: "1- if you're ",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                      ),
                    ),
                    TextSpan(
                      text: "breastfeeding ",
                      style: TextStyle(
                        color: Color(0xff608bb9),
                        fontSize: 21,
                      ),
                    ),
                    TextSpan(
                      text: "aim for ",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                      ),
                    ),
                    TextSpan(
                      text: "8-12 ",
                      style: TextStyle(
                        color: Color(0xff608bb9),
                        fontSize: 21,
                      ),
                    ),
                    TextSpan(
                      text:
                          "feeding a day in the first days of our baby's life. If you're ",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                      ),
                    ),
                    TextSpan(
                      text: "formula feeding, ",
                      style: TextStyle(
                        color: Color(0xff608bb9),
                        fontSize: 21,
                      ),
                    ),
                    TextSpan(
                      text: "offer ",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                      ),
                    ),
                    TextSpan(
                      text: "1-2 ",
                      style: TextStyle(
                        color: Color(0xff608bb9),
                        fontSize: 21,
                      ),
                    ),
                    TextSpan(
                      text: "ounces every ",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                      ),
                    ),
                    TextSpan(
                      text: "2-3 hours. ",
                      style: TextStyle(
                        color: Color(0xff608bb9),
                        fontSize: 21,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const CustomPreventContainer(
              widget: Text.rich(
                TextSpan(
                  children: <InlineSpan>[
                    TextSpan(
                      text: "2-Exposing your baby to ",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    TextSpan(
                      text: "sunlight ",
                      style: TextStyle(
                        color: Color(0xff608bb9),
                        fontSize: 20,
                      ),
                    ),
                    TextSpan(
                      text: "also ",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    TextSpan(
                      text: "helps break down indirect bilirubin. ",
                      style: TextStyle(
                        color: Color(0xff608bb9),
                        fontSize: 20,
                      ),
                    ),
                    TextSpan(
                      text:
                          "Sit by the window indoors with your baby, or take your baby for a stroll in the stroller if it's a nice day with sunshine.. ",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10, top: 15),
                child: SizedBox(
                  width: 100,
                  height: 50,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xff9ca2c3)),
                          shape:
                              MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const ChooseScreen()));
                      },
                      child: const Text(
                        "Next",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomPreventContainer extends StatelessWidget {
  const CustomPreventContainer({super.key, required this.widget});

  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Flexible(
        child: Container(
          width: double.infinity,
          decoration: ShapeDecoration(
              color: const Color(0xffe0e7f1),
              shadows: const [
                BoxShadow(
                  color: Color(0xff9ca2c3),
                  blurRadius: 5,
                  blurStyle: BlurStyle.outer,
                )
              ],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 10, 10, 10),
            child: widget,
          ),
        ),
      ),
    );
  }
}
