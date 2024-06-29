// import 'package:flutter/material.dart';
// import 'package:yerqan1_project/app/app_images/app_images.dart';
// class DoctorsListScreen extends StatelessWidget {
//   final List<Map<String, String>> doctors = [
//     {
//       'name': 'Dr Samya Nassef',
//       'title': 'Consultant Pediatrician and Neonatologist',
//       'location': 'Mansoura: Mubarak City',
//       'image': AppImage.doctor,
//     },
//     {
//       'name': 'Dr Ahmed Abdellfatah',
//       'title': 'PhD and Consultant Pediatrician, Ain Shams University',
//       'location': 'Mansoura: 6th of October St., off Maher Ahmed',
//       'image': AppImage.babyPhoto,
//     },
//     {
//       'name': 'Dr Mona Ibrahim Abdo',
//       'title': 'Consultant Pediatrician and Neonatologist',
//       'location': 'Mansoura: Al Nakhla Street',
//       'image': 'assets/image3.jpg',
//     },
//     {
//       'name': 'Dr Maha Saber',
//       'title': 'Consultant Pediatrician and Neonatologist',
//       'location': 'Mansoura: Eldraast',
//       'image': 'assets/image4.jpg',
//     },
//     {
//       'name': 'Dr Yara Alaa Aldin',
//       'title': 'Head of the Department of Pediatrics and Neonatology, Mansoura Military Hospital',
//       'location': 'Mansoura: Salah Salem Street',
//       'image': 'assets/image5.jpg',
//     },
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         title: Container(
//           height: 40,
//           child: TextField(
//             decoration: InputDecoration(
//               filled: true,
//               fillColor: Colors.grey[200],
//               hintText: 'Elmansoura',
//               prefixIcon: Icon(Icons.search, color: Colors.black),
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(30.0),
//                 borderSide: BorderSide.none,
//               ),
//             ),
//           ),
//         ),
//       ),
//       body: ListView.builder(
//         itemCount: doctors.length,
//         itemBuilder: (context, index) {
//           final doctor = doctors[index];
//           return _buildDoctorCard(
//             context,
//             doctor['name']!,
//             doctor['title']!,
//             doctor['location']!,
//             doctor['image']!,
//           );
//         },
//       ),
//     );
//   }
//
//   Widget _buildDoctorCard(BuildContext context, String name, String title, String location, String imageUrl) {
//     return Card(
//       margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//       child: ListTile(
//         contentPadding: EdgeInsets.all(10.0),
//         leading: ClipRRect(
//           borderRadius: BorderRadius.circular(8.0),
//           child: Image.asset(
//             imageUrl,
//             width: 60,
//             height: 60,
//             fit: BoxFit.cover,
//           ),
//         ),
//         title: Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
//         subtitle: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Text(title),
//             SizedBox(height: 5.0),
//             Row(
//               children: <Widget>[
//                 Icon(Icons.location_on, size: 14.0, color: Colors.blue),
//                 SizedBox(width: 5.0),
//                 Text(location),
//               ],
//             ),
//           ],
//         ),
//         trailing: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Icon(Icons.contact_phone, color: Colors.blue),
//             Text('16676', style: TextStyle(color: Colors.blue)),
//           ],
//         ),
//         onTap: () {
//           // Handle card tap
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yerqan1_project/app/app_colors/app_colors.dart';
import 'package:yerqan1_project/app/app_images/app_images.dart';

class DoctorsListScreen extends StatelessWidget {
  const DoctorsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
          height: 40,
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[200],
              hintText: 'Elmansoura',
              prefixIcon: Icon(Icons.search, color: Colors.black),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Container(
              child: Row(
                children: [
                  Image.asset(AppImage.doctor),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dr samya nassef ",
                        style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: AppColors.black),
                      ),
                      Text(
                        "Consultant Pediatrician and \nNeonatologist",
                        style: GoogleFonts.roboto(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: AppColors.gray),
                      ),
                      SizedBox(height: 9),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                "Contact",
                                style: GoogleFonts.roboto(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.mainColor),
                              ),
                              Text(
                                "16676",
                                style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.mainColor),
                              ),

                            ],
                          ),
                          SizedBox(width: 23,),
                          Icon(Icons.location_on,color: AppColors.mainColor,size: 20,),
                          Text(
                            "Mansoura: Mubarak City",
                            style: GoogleFonts.roboto(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: AppColors.mainColor),
                          ),

                        ],
                      )
                    ],
                  )
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.greenAccent),
            ),
            SizedBox(height: 10,),
            Container(
              child: Row(
                children: [
                  Image.asset(AppImage.doctor2),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dr ahmed abdellfatah ",
                        style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: AppColors.black),
                      ),
                      Text(
                        "PhD and Consultant Pediatrician,\nAin Shams University",
                        style: GoogleFonts.roboto(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: AppColors.gray),
                      ),
                      SizedBox(height: 9),

                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                "Contact",
                                style: GoogleFonts.roboto(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.mainColor),
                              ),
                              Text(
                                "16676",
                                style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.mainColor),
                              ),

                            ],
                          ),
                          SizedBox(width: 23,),
                          Icon(Icons.location_on,color: AppColors.mainColor,size: 20,),
                          Text(
                            "Mansoura:6th of October\n St., off Maher Ahmed",
                            style: GoogleFonts.roboto(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: AppColors.mainColor),
                          ),

                        ],
                      )
                    ],
                  )
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.greenAccent),
            ),
            SizedBox(height: 10,),
            Container(
              child: Row(
                children: [
                  Image.asset(AppImage.doctor3),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dr mona ibrahim abdo ",
                        style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: AppColors.black),
                      ),
                      Text(
                        "Consultant Pediatrician and\nNeonatologist",
                        style: GoogleFonts.roboto(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: AppColors.gray),
                      ),
                      SizedBox(height: 9),

                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                "Contact",
                                style: GoogleFonts.roboto(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.mainColor),
                              ),
                              Text(
                                "16676",
                                style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.mainColor),
                              ),

                            ],
                          ),
                          SizedBox(width: 23,),
                          Icon(Icons.location_on,color: AppColors.mainColor,size: 20,),
                          Text(
                            "Mansoura: Al Nakhla Street",
                            style: GoogleFonts.roboto(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: AppColors.mainColor),
                          ),

                        ],
                      )
                    ],
                  )
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.greenAccent),
            ),
            SizedBox(height: 10,),
            Container(
              child: Row(
                children: [
                  Image.asset(AppImage.doctor4),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dr maha saber",
                        style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: AppColors.black),
                      ),
                      Text(
                        "Consultant Pediatrician and\nNeonatologist",
                        style: GoogleFonts.roboto(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: AppColors.gray),
                      ),
                      SizedBox(height: 9),

                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                "Contact",
                                style: GoogleFonts.roboto(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.mainColor),
                              ),
                              Text(
                                "16676",
                                style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.mainColor),
                              ),

                            ],
                          ),
                          SizedBox(width: 23,),
                          Icon(Icons.location_on,color: AppColors.mainColor,size: 20,),
                          Text(
                            "Mansoura: Eldrasat",
                            style: GoogleFonts.roboto(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: AppColors.mainColor),
                          ),

                        ],
                      )
                    ],
                  )
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.greenAccent),
            ),
            SizedBox(height: 10,),
            Container(
              child: Row(
                children: [
                  Image.asset(AppImage.doctor5),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dr  Yara Alaa Aldin ",
                        style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: AppColors.black),
                      ),
                      Text(
                        "Head of the Department of Pediatrics and\nNeonatology, Mansoura Military Hospital.",
                        style: GoogleFonts.roboto(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: AppColors.gray),
                      ),
                      SizedBox(height: 9),

                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                "Contact",
                                style: GoogleFonts.roboto(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.mainColor),
                              ),
                              Text(
                                "16676",
                                style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.mainColor),
                              ),

                            ],
                          ),
                          SizedBox(width: 23,),
                          Icon(Icons.location_on,color: AppColors.mainColor,size: 20,),
                          Text(
                            "Mansoura: Salah Salem\nStreet",
                            style: GoogleFonts.roboto(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: AppColors.mainColor),
                          ),

                        ],
                      )
                    ],
                  )
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.greenAccent),
            ),
            SizedBox(height: 10,),
            Container(
              child: Row(
                children: [
                  Image.asset(AppImage.doctor),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dr samya nassef ",
                        style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: AppColors.black),
                      ),
                      Text(
                        "Consultant Pediatrician and \nNeonatologist",
                        style: GoogleFonts.roboto(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: AppColors.gray),
                      ),
                      SizedBox(height: 9),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                "Contact",
                                style: GoogleFonts.roboto(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.mainColor),
                              ),
                              Text(
                                "16676",
                                style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.mainColor),
                              ),

                            ],
                          ),
                          SizedBox(width: 23,),
                          Icon(Icons.location_on,color: AppColors.mainColor,size: 20,),
                          Text(
                            "Mansoura: Mubarak City",
                            style: GoogleFonts.roboto(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: AppColors.mainColor),
                          ),

                        ],
                      )
                    ],
                  )
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.greenAccent),
            ),
            SizedBox(height: 10,),
            Container(
              child: Row(
                children: [
                  Image.asset(AppImage.doctor2),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dr ahmed abdellfatah ",
                        style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: AppColors.black),
                      ),
                      Text(
                        "PhD and Consultant Pediatrician,\nAin Shams University",
                        style: GoogleFonts.roboto(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: AppColors.gray),
                      ),
                      SizedBox(height: 9),

                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                "Contact",
                                style: GoogleFonts.roboto(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.mainColor),
                              ),
                              Text(
                                "16676",
                                style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.mainColor),
                              ),

                            ],
                          ),
                          SizedBox(width: 23,),
                          Icon(Icons.location_on,color: AppColors.mainColor,size: 20,),
                          Text(
                            "Mansoura:6th of October\n St., off Maher Ahmed",
                            style: GoogleFonts.roboto(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: AppColors.mainColor),
                          ),

                        ],
                      )
                    ],
                  )
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.greenAccent),
            ),


          ],
        ),
      ),
    );
  }
}
