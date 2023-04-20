import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class mainFacilities extends StatelessWidget {
  final String title;
  final String jumlah;
  final String gambar;
  const mainFacilities({super.key, required this.title, required this.jumlah, required this.gambar});

  @override
  Widget build(BuildContext context) {
    return Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                Container(
                                  width: 45,
                                  height: 45,
                                  child: Image.asset(gambar, width: 40,)),
                                Row(
                                  children: [
                                    Text(jumlah, style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromARGB(255, 101, 29, 196),
                                        fontSize: 15)),
                                    Text(title, style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey,
                                        fontSize: 15)),
                                  ],
                                ),
                              ]),
                            );
  }
}