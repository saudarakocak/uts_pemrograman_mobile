// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class errorPage extends StatefulWidget {
  const errorPage({super.key});

  @override
  State<errorPage> createState() => _errorPageState();
}

class _errorPageState extends State<errorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 200,),
            Image.asset("image/404.png", width: MediaQuery.of(context).size.width / 1.5,),
            SizedBox(height: 50,),
            Text("Where are you going ?", style: GoogleFonts.poppins(
              fontSize: 20, 
              color: Colors.black, 
              fontWeight: FontWeight.w500
            ),),
            SizedBox(height: 10,),
            Text("Seems like the page that you were", style: GoogleFonts.poppins(
              fontSize: 14, 
              color: Colors.grey, 
              fontWeight: FontWeight.w200
            ),),
            Text("requested is already gone", style: GoogleFonts.poppins(
              fontSize: 14, 
              color: Colors.grey, 
              fontWeight: FontWeight.w200
            ),),
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width - 180,
                  child: ElevatedButton(
                  onPressed: (){
                    Navigator.pop(context);
                  }, 
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Back to Home",style: GoogleFonts.poppins(
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
          ],
        )
      )
    );
  }
}