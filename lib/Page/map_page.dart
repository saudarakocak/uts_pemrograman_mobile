import 'package:flutter/material.dart';

class mapPage extends StatefulWidget {
  const mapPage({super.key});

  @override
  State<mapPage> createState() => _mapPageState();
}

class _mapPageState extends State<mapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset("image/map.jpg",
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,),
    );
  }
}