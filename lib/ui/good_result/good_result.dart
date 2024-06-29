import 'package:flutter/material.dart';
import 'package:yerqan1_project/ui/good_result/newborn_advices_screen.dart';

class GoodResult extends StatelessWidget {
  const GoodResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 0,
                              blurRadius: 7,
                              offset: Offset(0, 8),
                            ),
                          ],
                          color: const Color(0xff5b82f9),
                          borderRadius: BorderRadius.circular(35.0),
                        ),
                        child: const Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            SizedBox(height: 16),
                            Icon(
                              Icons.tag_faces_rounded,
                              color: Color.fromARGB(255, 255, 255, 255),
                              fill: 0.5,
                              size: 50, // Icon size
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Your baby is fine, jaundice does not exist',
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
                      'I can help you wit some tips to protect ',
                      style: TextStyle(
                        color: Color.fromARGB(255, 44, 44, 44),
                        fontSize: 18.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          ' jaundice',
                          style: TextStyle(
                            color: Color.fromARGB(255, 44, 44, 44),
                            fontSize: 18.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        const NewbornAdvicesScreen()));
                          },
                          child: const Text(
                            "  Go?",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
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
