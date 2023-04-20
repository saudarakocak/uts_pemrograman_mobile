// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class callingPage extends StatefulWidget {
  const callingPage({super.key});

  @override
  State<callingPage> createState() => _callingPageState();
}

class _callingPageState extends State<callingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          SizedBox(height: 150,),
          //profile picture
          Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Container(color: Color.fromRGBO(88, 67, 190, 1),child: SizedBox(width: 150,height: 150,)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Align(
                  alignment: Alignment.center,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Container(color: Colors.white,child: SizedBox(width: 148,height: 148,)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Align(
                  alignment: Alignment.center,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset("image/E.png", width: 130,),
                  ),
                ),
              ),
            ],
          ),
        
          SizedBox(height: 60,),
          Text("Saudara Kocak", style: GoogleFonts.poppins(
            fontSize: 20, 
            fontWeight: FontWeight.w500,
            color: Colors.black
          ),),
          SizedBox(height: 10,),
          Text("12 : 30 minutes", style: GoogleFonts.poppins(
            fontSize: 14, 
            fontWeight: FontWeight.w400,
            color: Colors.grey
          ),),
          SizedBox(height: 50,),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: Icon(Icons.cancel, color : Color.fromARGB(255, 255, 130, 121), size: 45,)),
          )
        ]),
      ),
    );
  }
}