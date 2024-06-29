import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:yerqan1_project/app/app_colors/app_colors.dart';
import 'package:yerqan1_project/ui/screens/splash&intro_screen/splash_screen.dart';

class ArticlesScreen extends StatelessWidget {
  final List<Map<String, String>> articles = [
    {
      'url': 'https://www.cdc.gov/vaccines/schedules/easy-to-read/child-easyread.html',
      'text': 'click here',
    },
    {
      'url': 'https://publications.aap.org/pediatrics/article/149/3/e2021056056/184816/Recommended-Childhood-and-Adolescent-Immunization?autologincheck=redirected',
      'text': 'click here',
    },
    {
      'url': 'https://www.cdc.gov/vaccines/schedules/easy-to-read/child-easyread-compliant.html',
      'text': 'click here',
    },
    {
      'url': 'https://downloads.aap.org/AAP/PDF/1ChildhoodGuide_Schedule_Family.pdf',
      'text': 'click here',
    },
    {
      'url': 'https://www.cdc.gov/vaccines/schedules/hcp/imz/child-indications.html',
      'text': 'click here',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Align(
          alignment: Alignment.topLeft,
          child: Text(

            "ARTICLES",
            style: GoogleFonts.roboto(
                fontSize: 31,
                fontWeight: FontWeight.w500,
                color: AppColors.black),
          ),

        ),

      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: articles.length,
        itemBuilder: (context, index) {
          final article = articles[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  article['url']!,
                  style: const TextStyle(color: Colors.black),
                ),
                InkWell(
                  onTap: () async {
                    final url = article['url'];
                    if (await canLaunch(url!)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Text(
                    article['text']!,
                    style: const TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(right: 38,left: 38, bottom: 38),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const SpalshScreen(),));
          },
          child: Text(
            "Exist",
            style: GoogleFonts.roboto(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: AppColors.secondColor),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            padding: const EdgeInsets.symmetric(horizontal: 125,vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),
      ),
    );
  }
}
