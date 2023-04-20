// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uts_pemrograman_mobile/Page/explore_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
        Stack(
          children: [

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: Color.fromRGBO(255, 155, 125, 1),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Image.asset(
                "image/house.png", width: 300,)
            ),

            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(children: [
                    //lingkaran
                    Row(children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(88, 67, 190, 1),
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          Container(
                            width: 18,
                            height: 18,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 156, 64),
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ],
                      )
                    ],),
                    SizedBox(height: 30,),
            
            
                    //Text
                    Row(
                      children: [
                        Text("Find Cozy House", style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 20
                        ),),
                      ],
                    ),
                    Row(
                      children: [
                        Text("to Stay and Happy", style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 20
                            ),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    //Text tipis
                    Row(
                      children: [
                        Text("Stop membuang banyak waktu",style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w300,
                              color: Colors.grey,
                              fontSize: 15
                            ),),
                      ],
                    ),
                    Row(
                      children: [
                        Text("pada tempat yang tidak habitable",style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w300,
                              color: Colors.grey,
                              fontSize: 15
                            ),),
                      ],
                    ),
                    SizedBox(height: 30,),
            
            
                    //button
                    Row(children: [
                      ElevatedButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => explorePage(),));
                        }, 
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                          child: Text("Explore Now",style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 16
                            ),),
                        ),
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: Color.fromRGBO(88, 67, 190, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)
                          )
                        ),
                      )
                    ],)
                  ],),
                ),
            
                //image
                
                
              ],
            ),
          ],
        )
      ),
    );
  }
}