// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uts_pemrograman_mobile/components/popular_cities.dart';
import 'package:uts_pemrograman_mobile/components/recom_space.dart';
import 'package:uts_pemrograman_mobile/components/tips.dart';

class explorePage extends StatefulWidget {
  const explorePage({super.key});

  @override
  State<explorePage> createState() => _explorePageState();
}

class _explorePageState extends State<explorePage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          SafeArea(
            child: SingleChildScrollView(
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Explore Now", style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 20
                          ),),
                        ],
                      ),
                      SizedBox(height: 5,),
                      //Text tipis
                      Row(
                        children: [
                          Text("Mencari kosan yang cozy",style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w300,
                                color: Colors.grey,
                                fontSize: 15
                              ),),
                        ],
                      ),

                      SizedBox(height: 25,),
                      //Text tipis
                      Row(
                        children: [
                          Text("Popular Cities",style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontSize: 15
                              ),),
                        ],
                      ),
                    ],
                  ),
                ),
                
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(width: 25,),
                      popularCities(
                        gambar: "image/image 10.png", 
                        title: "Jakarta", 
                        isFavorite: false
                      ),
                      SizedBox(width: 25,),
                      popularCities(
                        gambar: "image/image 11.png", 
                        title: "Bandung", 
                        isFavorite: true
                      ),
                      SizedBox(width: 25,),
                      popularCities(
                        gambar: "image/image 12.png", 
                        title: "Bandung", 
                        isFavorite: true
                      ),
                      SizedBox(width: 25,)
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    children: [
                      //Text tipis
                      Row(
                        children: [
                          Text("Recommended Space",style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontSize: 15
                              ),),
                        ],
                      ),
                      SizedBox(height: 15,),

                      Column(children: [
                        recomSpace(
                          rating: 4, 
                          title: "Kuretakose Hott", 
                          harga: 52, daerah: "Bandung, Germany", 
                          gambar: "image/image 14.png",
                          tujuanPage: "detail",
                        ),
                        SizedBox(height: 15,),
                        recomSpace(
                          rating: 5, 
                          title: "Roemah Nenek", 
                          harga: 11, daerah: "Seattle, Bogor", 
                          gambar: "image/image 15.png",
                          tujuanPage: "null",
                        ),
                        SizedBox(height: 15,),
                        recomSpace(
                          rating: 3, 
                          title: "Darrling How", 
                          harga: 20, daerah: "Jakarta, Indonesia", 
                          gambar: "image/image 13.png",
                          tujuanPage: "null",
                        ),
                        SizedBox(height: 15,),
                      ],),
                    
                      Row(
                        children: [
                          Text("Tips & Guidance",style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontSize: 15
                              ),),
                        ],
                      ),
                      SizedBox(height: 15,),
                      
                      Column(children: [
                        tipsGuidance(
                          image: "image/gambar 1.png", 
                          title: "City GuideLines", 
                          update: "Updated 20 Apr"
                        ),
                        SizedBox(height: 15,),
                        tipsGuidance(
                          image: "image/gambar 2.png", 
                          title: "Jakarta Fairship", 
                          update: "Updated 11 Dec"
                        ),
                        SizedBox(height: 15,),

                      ],)

                      
                    ],
                  ),
                ),

              ]),
            ),
          ),
        
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: BottomNavigationBar(
                  currentIndex: index,
                  selectedItemColor: Color.fromARGB(197, 101, 29, 196),
                  unselectedItemColor: Color.fromARGB(169, 117, 117, 117),
                  type: BottomNavigationBarType.fixed,
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  backgroundColor: Color.fromARGB(255, 231, 231, 231),
                  items: [
                    BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                    BottomNavigationBarItem(icon: Icon(Icons.message), label: "Message"),
                    BottomNavigationBarItem(icon: Icon(Icons.card_membership), label: "Card"),
                    BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorite"),
                  ],
                  onTap: (value) {
                    setState(() {
                    index = value;
                    });
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}