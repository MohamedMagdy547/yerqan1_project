import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yerqan1_project/app/app_colors/app_colors.dart';
import 'package:yerqan1_project/app/app_images/app_images.dart';
import 'package:yerqan1_project/ui/screens/question_screen/podcast.dart';

class VaccineInfoScreen extends StatelessWidget {
  const VaccineInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,

        child: Column(
          children: [
            Image.asset(AppImage.baby,alignment: Alignment.topCenter,),
            SizedBox(height: 180,),
        RichText(
          textAlign: TextAlign.start,
          text: TextSpan(
            children: [
              TextSpan(
                text: 'if you want more information about\n vaccines , ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: 'Click Here ..',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    // Handle the click event
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>PodcastPlayer(),));
                  },
              ),
            ],
          ),


        ),
            SizedBox(height: 136,),
            Padding(
              padding: const EdgeInsets.only(right: 19),
              child: Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                    onPressed: () {
                      // Handle the exit button event
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: EdgeInsets.symmetric(horizontal: 28, vertical: 12),

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    child: Text(
                      "Exist",
                      style: GoogleFonts.roboto(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: AppColors.secondColor),
                    ),
                  ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
