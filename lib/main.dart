import 'package:flutter/material.dart';
import 'buttons.dart';
import 'package:o3d/o3d.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Test', 
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Color.fromARGB(0xAA, 0xAA, 0xAA, 0xAA),
      ),
      home: Scaffold(
        body: SafeArea(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Text("Szachy.pl", style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold)),

              Expanded(
                child: const O3D.asset(
                  src: "assets/chess_rook.glb",
                  autoRotate: true,
                  disableZoom: true,
                  rotationPerSecond: "30deg",
                  autoRotateDelay: 0,
                  interactionPrompt: InteractionPrompt.none,
                  
                )
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 60),
                  Button(
                    text: "Login",
                    onPressed: () {},
                  ),
                  SizedBox(height: 30),
                  Button(
                    text: "Register",
                    onPressed: () {},
                  ),
                SizedBox(height: 80)],
              ),
            ],
          ),
        ),
      
      ),
    );
  }
}
