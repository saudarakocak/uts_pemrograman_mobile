// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class popularCities extends StatelessWidget {
  final String gambar;
  final String title;
  final bool isFavorite;
  const popularCities({super.key, required this.gambar, required this.title, required this.isFavorite});

  @override
  Widget build(BuildContext context) {
    return Container(
                  width: 120,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 240, 240, 240)
                  ),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 110,
                            child: ClipRRect(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                              child: Image.asset(gambar,fit: BoxFit.cover,),
                            ),
                          ),
                          Container(

                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text(title,style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                      fontSize: 15),
                          ),
                            ))
                        ],
                      ),
                      if(isFavorite)
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 45,
                          height: 27,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(15), bottomLeft: Radius.circular(30)),
                            color: Color.fromARGB(255, 101, 29, 196)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left : 8.0),
                            child: Icon(Icons.star, size: 20, color: Color.fromARGB(255, 255, 147, 7),),
                          ),
                        ),
                      )
                    ],
                  ),
                );
  }
}