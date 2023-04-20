// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, camel_case_types, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uts_pemrograman_mobile/Page/details_page.dart';
import 'package:uts_pemrograman_mobile/Page/error_page.dart';
import 'package:uts_pemrograman_mobile/components/main_facilities.dart';

class recomSpace extends StatelessWidget {
  final String gambar;
  final int rating;
  final String title;
  final int harga;
  final String daerah;
  final String tujuanPage;
  const recomSpace({super.key, required this.rating, required this.title, required this.harga, required this.daerah, required this.gambar, required this.tujuanPage});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (tujuanPage == "detail")
          Navigator.push(context, MaterialPageRoute(builder: (context) => detailPage(),));
        else {
          Navigator.push(context, MaterialPageRoute(builder: (context) => errorPage(),));
        }
      },
      child: Container(
        
                        child: Row(
                          children: [
                            Container(
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              
                                ),
                              child: Stack(
                                children: [
                                  Container(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.asset(gambar),
                                    ),
                                  ),
                                  // if(isFavorite)
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      width: 55,
                                      height: 23,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(topRight: Radius.circular(15), bottomLeft: Radius.circular(30)),
                                        color: Color.fromARGB(255, 101, 29, 196)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(left : 13.0),
                                        child: Row(
                                          children: [
                                            Icon(Icons.star, size: 13, color: Color.fromARGB(255, 255, 147, 7),),
                                            SizedBox(width: 3,),
                                            Text("$rating/5",style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontSize: 10))
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ),
                            SizedBox(width: 15,),
                        Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(title, style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  fontSize: 15)),
                          Row(children: [
                          Text("\$" + harga.toString(), style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              color:Color.fromARGB(255, 101, 29, 196),
                              fontSize: 12)),
                          Text(" / month", style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                              fontSize: 12)),
                        ],),
                        SizedBox(height: 15,),
                        Text(daerah, style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                              fontSize: 10)),
                      ],)
                          ],
                        ),
                      ),
    );
  }
}