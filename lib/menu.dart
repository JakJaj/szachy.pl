import 'package:flutter/material.dart';
import 'package:szachy_pl/main.dart';
import 'buttons.dart';
import 'main.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Szachy.pl", style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold)),
            const SizedBox(height: 150), 
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  const SizedBox(height: 20),
                  Center(
                    child: Button(
                      text: "Offline game",
                      onPressed: () {
                        //TODO: PRZEJSCIE DO GRY OFFLINE
                      },
                    ),
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: Button(
                      text: "Online game",
                      onPressed: () {
                        //TODO: PRZEJSCIE DO GRY ONLINE                      
                      },
                    ),
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: Button(
                      text: "Profile",
                      onPressed: () {
                        //TODO: PRZEJSCIE DO UZYTKOWNIKA
                      },
                    ),
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: Button(
                      text: "Log out",
                      onPressed: () {
                        //TODO: WYLOGOWANIE UZYTKOWNIKA

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const MyApp()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
