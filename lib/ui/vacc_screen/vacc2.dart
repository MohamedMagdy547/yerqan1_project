import 'package:flutter/material.dart';
import 'package:yerqan1_project/ui/vacc_screen/vacc1.dart';
import 'package:yerqan1_project/ui/vacc_screen/vacc3.dart';

class Vacc2 extends StatelessWidget {
  const Vacc2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 50.0, left: 20, bottom: 30),
                child: Text(
                  "- Results and side effects of childhood vaccinations.",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 30.0,
                  right: 55,
                ),
                child: Container(
                  decoration: ShapeDecoration(
                      color: const Color(0xffdfe6f2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: const Padding(
                    padding: EdgeInsets.all(25),
                    child: Text(
                      "Vaccines are effective well protective against the disease they are intended for if we administer all of their supporting components at the appropriates times",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30.0, left: 20, bottom: 15),
                child: Text(
                  "- The common side effects are : ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 70.0),
                child: Column(
                  children: [
                    CustomContainer(
                      isvacc3: false,
                      text: "the child's temperature rises.",
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CustomContainer(
                      isvacc3: false,
                      text: "Swelling and redness of the vaccine area.",
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30.0, left: 20, bottom: 15),
                child: Text(
                  "- Treatment ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 25,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 55),
                child: Container(
                  decoration: ShapeDecoration(
                      color: const Color(0xff49e047),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: const Padding(
                    padding: EdgeInsets.all(25),
                    child: Text(
                      "Treatment is by giving the child an oral antipyretic, such as paracetamol, and we rarely have to consult a doctor in severe cases.",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BackNextButton(
                      text: "<- back",
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    BackNextButton(
                        text: "next ->",
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const Vacc3()));
                        }),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.text, required this.isvacc3});
  final String text;
  final bool isvacc3;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isvacc3 ? const EdgeInsets.all(15) : EdgeInsets.zero,
      child: Container(
        height: isvacc3 ? 70 : 50,
        width: double.infinity,
        decoration: ShapeDecoration(
          color: const Color(0xffd9d9d9),
          shape: isvacc3
              ? RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))
              : const RoundedRectangleBorder(),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }
}
