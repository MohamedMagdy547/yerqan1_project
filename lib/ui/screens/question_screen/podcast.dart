import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yerqan1_project/app/app_colors/app_colors.dart';
import 'package:yerqan1_project/ui/screens/question_screen/video_screen.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PodcastScreen extends StatefulWidget {
  @override
  _PodcastScreenState createState() => _PodcastScreenState();
}

class _PodcastScreenState extends State<PodcastScreen> {
  final List<String> videoIds = [
    'tLS6t3FVOTI', // Replace with your YouTube video IDs
    'CYu1qINgRow',
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
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "PODCAST",
                style: GoogleFonts.roboto(
                    fontSize: 31,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black),
              ),
            ),
            SizedBox(
              height: 23,
            ),
            SingleChildScrollView(
              child: Column(
                children: _controllers.map((controller) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
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

          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(right: 38, left: 38, bottom: 38),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => VideoPlayerScreen(),));
          },

          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.mainColor,
            padding: EdgeInsets.symmetric(horizontal: 122, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          child: Text(
          "Next",
          style: GoogleFonts.roboto(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: AppColors.secondColor),
        ),
        ),
      ),
    );
  }
}
