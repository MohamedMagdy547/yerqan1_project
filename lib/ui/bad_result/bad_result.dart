import 'package:flutter/material.dart';
import 'package:yerqan1_project/ui/bad_result/location_screen.dart';


class BadResult extends StatelessWidget {
  const BadResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 200.0),
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.8),
                              spreadRadius: 0,
                              blurRadius: 7,
                              offset: const Offset(0, 8),
                            ),
                          ],
                          color: const Color.fromARGB(255, 196, 151, 27),
                          borderRadius: BorderRadius.circular(35.0),
                        ),
                        child: const Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            SizedBox(height: 16),
                            Icon(
                              Icons.sentiment_neutral_sharp,
                              color: Color.fromARGB(255, 255, 255, 255),
                              size: 50,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Your baby has a high jaundice, you must visit your doctor immediately, and take necessary measures.',
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 18.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      'I can help you to find the nearest doctor for',
                      style: TextStyle(
                        color: Color.fromARGB(255, 44, 44, 44),
                        fontSize: 16.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'baby,',
                          style: TextStyle(
                            color: Color.fromARGB(255, 44, 44, 44),
                            fontSize: 16.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        const DoctorsListScreen()));
                          },
                          child: const Text(
                            " find doctor?",
                            style: TextStyle(
                              color: Colors.blueAccent,
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
    );
  }
}
