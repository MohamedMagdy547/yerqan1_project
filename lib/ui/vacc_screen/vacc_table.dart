import "package:flutter/material.dart";
import "package:yerqan1_project/ui/vacc_screen/vaccine_info_screen.dart";

class VaccTable extends StatelessWidget {
  const VaccTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 50, bottom: 30),
                child: Container(
                  decoration: ShapeDecoration(
                      color: const Color(0xffd9d9d9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      )),
                  child: Table(
                    border: TableBorder(
                      borderRadius: BorderRadius.circular(16),
                      horizontalInside: const BorderSide(
                          color: Colors.black,
                          width: 1,
                          style: BorderStyle.solid),
                      // verticalInside: const BorderSide(
                      //     color: Colors.black,
                      //     width: 1,
                      //     style: BorderStyle.solid),
                    ),
                    children: const [
                      TableRow(children: [
                        SizedBox(
                          height: 50,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Baby's Age",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Necessary vaccines",
                                style: TextStyle(
                                    fontSize: 19, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        )
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: SizedBox(
                            height: 50,
                            child: Row(
                              children: [
                                Text(
                                  "After Birth",
                                  style: TextStyle(fontSize: 20),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "(dose 1)",
                                  style: TextStyle(
                                      fontSize: 18, color: Color(0xff7476bd)),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Vitamin",
                                style: TextStyle(fontSize: 20),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                "A",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffbf8182)),
                              )
                            ],
                          ),
                        )
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: SizedBox(
                            height: 70,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Birth",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      "(dose 1)",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Color(0xff7476bd)),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "3-months",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      "(dose 2)",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Color(0xff7476bd)),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 70,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Hepatitis",
                                style: TextStyle(fontSize: 20),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                "B",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffbf8182)),
                              )
                            ],
                          ),
                        )
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: SizedBox(
                            height: 70,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "2-months",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      "(dose 1)",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Color(0xff7476bd)),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "4-months",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      "(dose 2)",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Color(0xff7476bd)),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 70,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Rotavirus",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        )
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: SizedBox(
                            height: 70,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "2-months",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      "(dose 1)",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Color(0xff7476bd)),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "6-months",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      "(dose 2)",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Color(0xff7476bd)),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 70,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "DTaP",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        )
                      ]),
                      TableRow(children: [
                        SizedBox(
                          height: 70,
                          child: Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "2-months",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      "(dose 1)",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Color(0xff7476bd)),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "6-months",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      "(dose 2)",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(0xff7476bd)),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 70,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Pneumococcal",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        )
                      ]),
                      TableRow(children: [
                        SizedBox(
                          height: 70,
                          child: Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "2-months",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      "(dose 1)",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Color(0xff7476bd)),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "4-months",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      "(dose 2)",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Color(0xff7476bd)),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 70,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Polio",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        )
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: SizedBox(
                            height: 90,
                            child: Column(
                              children: [
                                Text(
                                  "Every year, Two doses for some children",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 90,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "influenza/Flu",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        )
                      ]),
                      TableRow(children: [
                        SizedBox(
                          height: 70,
                          child: Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "13-months",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      "(dose 1)",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xff7476bd)),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "4-6 years",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      "(dose 2)",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Color(0xff7476bd)),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 70,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Chickenpox",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        )
                      ]),
                      TableRow(children: [
                        SizedBox(
                          height: 70,
                          child: Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Column(
                              children: [
                                Text(
                                  "2 doses separated by 6 months",
                                  style: TextStyle(fontSize: 19),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 70,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Hepatitis",
                                style: TextStyle(fontSize: 20),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                "A",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffbf8182)),
                              )
                            ],
                          ),
                        )
                      ]),
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xffc0fff8)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ))),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const VaccineInfoScreen(),));
                  },
                  child: const Text(
                    "Next",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
