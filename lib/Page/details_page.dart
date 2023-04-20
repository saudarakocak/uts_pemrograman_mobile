// ignore_for_file: prefer_const_constructors, camel_case_types, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uts_pemrograman_mobile/Page/calling_page.dart';
import 'package:uts_pemrograman_mobile/Page/error_page.dart';
import 'package:uts_pemrograman_mobile/Page/map_page.dart';
import 'package:uts_pemrograman_mobile/components/main_facilities.dart';

class detailPage extends StatefulWidget {
  const detailPage({super.key});

  @override
  State<detailPage> createState() => _detailPageState();
}

class _detailPageState extends State<detailPage> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(children: [
            Stack(
              children: [
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.blue,
                child: Image.asset("image/image 12.png", fit: BoxFit.cover,),  
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white
                    ),child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.keyboard_arrow_left, color: Colors.black45,),
                    ),),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (!isFavorite){
                          isFavorite = true;
                        }else if (isFavorite) {
                          isFavorite = false;
                        }
                      });
                    },
                    child: Container(decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white
                    ),child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: 
                      isFavorite? 
                        Icon(Icons.favorite, size: 20, color: Colors.red,)
                         : Icon(Icons.favorite_outline, size: 20, color: Colors.black45),
                    ),),
                  )
                ],),
              ),
              Container(
                child: Column(
                  children: [
                    SizedBox(height: 350,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(top : Radius.circular(25)),
                        color: Colors.white,
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Kuretakeso Hott", style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20
                                  ),),
                                  
                                  Row(children: [
                                  Text("\$52", style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      color:Color.fromARGB(255, 101, 29, 196),
                                      fontSize: 15)),
                                  Text(" / month", style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey,
                                      fontSize: 15)),
                                  ],
                                ),
                              ]),
                              Row(children: [
                                Icon(Icons.star, size: 20, color: Color.fromARGB(255, 255, 123, 7),),
                                Icon(Icons.star, size: 20, color: Color.fromARGB(255, 255, 123, 7),), 
                                Icon(Icons.star, size: 20, color: Color.fromARGB(255, 255, 123, 7),),
                                Icon(Icons.star, size: 20, color: Color.fromARGB(255, 255, 123, 7),),
                                Icon(Icons.star, size: 20, color: Color.fromARGB(255, 171, 171, 171),)
                              ],),
                              
                            ],
                          ),
      
                          SizedBox(height: 30,),
                          Text("Main Facilities", style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15
                                  ),),
      
                          SizedBox(height: 10,),
                          
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              mainFacilities(title: " kitchen", jumlah: "2", gambar: "image/poto1.jpg"),
      
                              mainFacilities(title: " bedroom", jumlah: "3", gambar: "image/poto2.jpg"),
                              mainFacilities(title: " big cupboard", jumlah: "3", gambar: "image/poto3.jpg")
                            ]
                          ),
      
                          SizedBox(height: 30,),
      
                          Text("Photos", style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15
                                  ),),
      
                          SizedBox(height: 10,),
      
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.asset("image/pic.png"),
                                ),
                                SizedBox(width: 15,),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.asset("image/pic-1.png"),
                                ),
                                SizedBox(width: 15,),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.asset("image/pic-2.png"),
                                ),
                                SizedBox(width: 15,),
                              ],
                            ),
                          ),

                          SizedBox(height: 30,),
      
                          Text("Location", style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15
                                  ),),
      
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Text("Jln. Kappan Sukses No. 20", style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey,
                                    fontSize: 12
                                  ),),
                              Text("Palembang", style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey,
                                    fontSize: 12
                                  ),),
                            ],),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => mapPage()));
                              },
                              child: Container(decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color.fromARGB(116, 233, 233, 233)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Icon(Icons.location_pin, color: Color.fromARGB(255, 154, 154, 154),),
                              ),
                              
                              ),
                            ),
                          ],),

                          SizedBox(height: 30,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width - 50,
                                child: ElevatedButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => callingPage()));
                                }, 
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text("Book Now",style: GoogleFonts.poppins(
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
                              ),
                              ),
                            ],
                          ),
                          
                      ]),
                      
                    ))
                  ],
                ),
              )
              
            ],),
            
          ]),
        ),
      ),
    );
  }
}

