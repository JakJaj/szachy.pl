import 'package:flutter/material.dart';
import 'package:szachy_pl/registerPage.dart';
import 'buttons.dart';
import 'package:o3d/o3d.dart';
import 'loginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
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
              const Text("Szachy.pl", style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold)),
              Container( //TODO: LADOWANIE MODELU WCZESNIEJ ZEBY NIE BYLO MOMENTU W KTORYM GO NIE WIDAC
                height: 400,
                width: 500,
                child: const O3D.asset(
                  src: "assets/chess_rook.glb",
                  autoRotate: true,
                  disableZoom: true,
                  rotationPerSecond: "30deg",
                  autoRotateDelay: 0,
                  interactionPrompt: InteractionPrompt.none,
                  
                )
              ),
              MainMenu(),
            ],
          ),
        ),
      
      ),
    );
  }
}

class MainMenu extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return 
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            Button(
              text: "Login",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
            ),
            const SizedBox(height: 20),
            Button(
              text: "Register",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RegisterPage()),
                );
              },
            ),
          ],
        ),
      );
  }

}