import 'package:flutter/material.dart';
import 'package:yerqan1_project/ui/questoin1_screen/qu4.dart';

class Quest3 extends StatelessWidget {
  const Quest3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 244, 251),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    size: 30,
                  )),
              const SizedBox(height: 20),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Q',
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff5B82F9)),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    '3/6',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Center(
                child: SizedBox(
                  height: 400,
                  width: 300,
                  child: Card(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 300,
                          height: 100,
                          color: const Color.fromARGB(255, 51, 50, 50),
                          child: const Center(
                            child: Text(
                              "Is hard to wake up?",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 280,
                          width: 300,
                          child: Center(
                            child: Column(
                              children: <Widget>[
                                const SizedBox(
                                  height: 50,
                                ),
                                OutlinedButton.icon(
                                    style: OutlinedButton.styleFrom(
                                        alignment: FractionalOffset.centerLeft,
                                        foregroundColor: Colors.black,
                                        side: const BorderSide(
                                            color: Colors.black),
                                        fixedSize: const Size(250, 60)),
                                    onPressed: () {},
                                    icon: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: const ShapeDecoration(
                                          shape: CircleBorder(
                                              side: BorderSide(
                                                  color: Colors.black))),
                                      child: const Center(child: Text("A")),
                                    ),
                                    label: const Text(
                                      "              YES         ",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )),
                                const SizedBox(
                                  height: 40,
                                ),
                                OutlinedButton.icon(
                                    style: OutlinedButton.styleFrom(
                                        alignment: FractionalOffset.centerLeft,
                                        foregroundColor: Colors.black,
                                        side: const BorderSide(
                                            color: Colors.black),
                                        fixedSize: const Size(250, 60)),
                                    onPressed: () {},
                                    icon: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: const ShapeDecoration(
                                          shape: CircleBorder(
                                              side: BorderSide(
                                                  color: Colors.black))),
                                      child: const Center(child: Text("B")),
                                    ),
                                    label: const Text(
                                      "       NO (normal) ",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const Quest4();
                      }));
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: const Color(0xff5B82F9),
                      fixedSize: const Size(300, 40),
                    ),
                    child: const Text(' Next '),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
