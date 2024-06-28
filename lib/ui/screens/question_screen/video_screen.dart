import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yerqan1_project/app/app_colors/app_colors.dart';
import 'package:yerqan1_project/ui/screens/question_screen/articles.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayerScreen extends StatefulWidget {
  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  final List<String> videoIds = [
    'piO71GcUa1s', // Replace with your YouTube video IDs
    'SE5AoRSg2l8',
    '9gvhCgZNOSM',

  ];

  List<YoutubePlayerController> _controllers = [];

  @override
  void initState() {
    super.initState();
    _controllers = videoIds.map((id) {
      return YoutubePlayerController(
        initialVideoId: id,
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        ),
      );
    }).toList();
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backGround,
        appBar: AppBar(
          backgroundColor: AppColors.backGround,

        ),
        body:Padding(
          padding: const EdgeInsets.only(left: 24,right: 24,top: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(

                    "VIDEOS",
                    style: GoogleFonts.roboto(
                        fontSize: 31,
                        fontWeight: FontWeight.w500,
                        color: AppColors.black),
                  ),

                ),
                SizedBox(height: 8,),
                SingleChildScrollView(
                  child: Column(
                    children: _controllers.map((controller) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: YoutubePlayer(
                          controller: controller,
                          showVideoProgressIndicator: true,
                          progressIndicatorColor: Colors.blueAccent,
                          onReady: () {
                            print('Player is ready.');
                          },
                        ),
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(height: 5,),
                Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ArticlesScreen(),));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: BorderSide(strokeAlign: 2)
                      ),
                    ),
                    child: Text(
                      "more info",
                      style: GoogleFonts.roboto(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )

    );
  }
}
