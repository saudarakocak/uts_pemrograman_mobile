// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class tipsGuidance extends StatelessWidget {
  final String image;
  final String title;
  final String update;
  const tipsGuidance({super.key, required this.image, required this.title, required this.update});

  @override
  Widget build(BuildContext context) {
    return Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(image, width: 75,),
                          ),
                          SizedBox(width: 15,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(title,style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 15
                              ),),
                              SizedBox(height: 5,),
                              Text(update,style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                color: Colors.grey,
                                fontSize: 11
                              ),),
                            ],
                          ),
                        ],
                      ),
                      Icon(Icons.keyboard_arrow_right, color: Color.fromARGB(176, 158, 158, 158), size: 25,),
                      
                    ],),
                  );
  }
}