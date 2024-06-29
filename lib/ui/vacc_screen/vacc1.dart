import 'package:flutter/material.dart';
import 'package:yerqan1_project/ui/vacc_screen/vacc2.dart';

class Vacc1 extends StatelessWidget {
  const Vacc1({super.key});

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
                "- Why it is so important ?",
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
                    "Vaccines give the child strong immunity similar to the immunity obtained from infection with the same disease, expect for the temporal aspect only, as its duraion is less than immunity to the disease, and this explains the vacciness that support the child.",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 50.0, left: 20, bottom: 30),
              child: Text(
                "- NOTE -",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff4a79a9),
                  fontSize: 25,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 55),
              child: Container(
                decoration: ShapeDecoration(
                    color: const Color(0xfff0f42e),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: const Padding(
                  padding: EdgeInsets.all(25),
                  child: Text(
                    "We note here that children's vaccinations must be carried out under the supervision of a doctor, as there are some contraindications that prevent their procedure or delay it for a later period, such as: tuberculosis, or some kidney diseases.",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            const Spacer(),
            Row(
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
                            builder: (BuildContext context) => const Vacc2()));
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class BackNextButton extends StatelessWidget {
  const BackNextButton({super.key, required this.text, this.onPressed});

  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30, left: 30, bottom: 15),
      child: SizedBox(
        width: 100,
        height: 50,
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(const Color(0xffc0fff8)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ))),
            onPressed: onPressed,
            child: Text(
              text,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            )),
      ),
    );
  }
}
