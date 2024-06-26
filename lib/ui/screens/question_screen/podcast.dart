import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';
import 'package:yerqan1_project/app/app_colors/app_colors.dart';
import 'package:yerqan1_project/ui/screens/question_screen/video_screen.dart';

class PodcastPlayer extends StatefulWidget {
  @override
  _PodcastPlayerState createState() => _PodcastPlayerState();
}

class _PodcastPlayerState extends State<PodcastPlayer> {
  late VideoPlayerController _controller1;
  late VideoPlayerController _controller2;
  late Future<void> _initializeVideoPlayerFuture1;
  late Future<void> _initializeVideoPlayerFuture2;

  @override
  void initState() {
    super.initState();

    // Initialize the first video controller
    _controller1 = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    );
    _initializeVideoPlayerFuture1 = _controller1.initialize();
    _controller1.setLooping(true);

    // Initialize the second video controller
    _controller2 = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    );
    _initializeVideoPlayerFuture2 = _controller2.initialize();
    _controller2.setLooping(true);
  }

  @override
  void dispose() {
    // Dispose both controllers
    _controller1.dispose();
    _controller2.dispose();
    super.dispose();
  }

  void _playPauseVideo(VideoPlayerController controller) {
    setState(() {
      if (controller.value.isPlaying) {
        controller.pause();
      } else {
        controller.play();
      }
    });
  }

  void _seekForward(VideoPlayerController controller) {
    final position = controller.value.position;
    final newPosition = position + Duration(seconds: 10);
    controller.seekTo(newPosition);
  }

  void _seekBackward(VideoPlayerController controller) {
    final position = controller.value.position;
    final newPosition = position - Duration(seconds: 10);
    controller.seekTo(newPosition);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGround,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 28, right: 28, top: 40),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(

                      "POADCAST",
                      style: GoogleFonts.roboto(
                          fontSize: 31,
                          fontWeight: FontWeight.w500,
                          color: AppColors.black),
                    ),
                  ),
                ),
                SizedBox(height: 23,),
                // First video player
                FutureBuilder(
                  future: _initializeVideoPlayerFuture1,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      return Column(
                        children: [
                          AspectRatio(
                            aspectRatio: _controller1.value.aspectRatio,
                            child: VideoPlayer(_controller1),
                          ),
                          VideoProgressIndicator(_controller1,
                              allowScrubbing: true),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                icon: Icon(Icons.replay_10),
                                onPressed: () => _seekBackward(_controller1),
                              ),
                              IconButton(
                                icon: Icon(
                                  _controller1.value.isPlaying
                                      ? Icons.pause
                                      : Icons.play_arrow,
                                ),
                                onPressed: () => _playPauseVideo(_controller1),
                              ),
                              IconButton(
                                icon: Icon(Icons.forward_10),
                                onPressed: () => _seekForward(_controller1),
                              ),
                            ],
                          ),
                        ],
                      );
                    } else {
                      return CircularProgressIndicator();
                    }
                  },
                ),
                SizedBox(height: 20),
                // Second video player
                FutureBuilder(
                  future: _initializeVideoPlayerFuture2,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      return Column(
                        children: [
                          AspectRatio(
                            aspectRatio: _controller2.value.aspectRatio,
                            child: VideoPlayer(_controller2),
                          ),
                          VideoProgressIndicator(_controller2,
                              allowScrubbing: true),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                icon: Icon(Icons.replay_10),
                                onPressed: () => _seekBackward(_controller2),
                              ),
                              IconButton(
                                icon: Icon(
                                  _controller2.value.isPlaying
                                      ? Icons.pause
                                      : Icons.play_arrow,
                                ),
                                onPressed: () => _playPauseVideo(_controller2),
                              ),
                              IconButton(
                                icon: Icon(Icons.forward_10),
                                onPressed: () => _seekForward(_controller2),
                              ),
                            ],
                          ),
                        ],
                      );
                    } else {
                      return CircularProgressIndicator();
                    }
                  },
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => MultiVideoPlayerScreen(),));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.mainColor,
                        padding: EdgeInsets.symmetric(
                            horizontal: 28, vertical: 12),

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
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        padding: EdgeInsets.symmetric(
                            horizontal: 28, vertical: 12),

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
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
