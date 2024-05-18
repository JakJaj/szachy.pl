import 'package:flutter/material.dart';
import 'package:szachy_pl/buttons.dart';
import 'package:szachy_pl/entryField.dart';
import 'menu.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  const Center(child: EntryField(hintText: "Email")),
                  const SizedBox(height: 20),
                  const Center(child: EntryField(hintText: "Nickname",)),
                  const SizedBox(height: 20),
                  const Center(child: ObscurePasswordEntryField(hintText: "Password")),
                  const SizedBox(height: 20),
                  const Center(child: ObscurePasswordEntryField(hintText: "Confirm Password")),
                  const SizedBox(height: 100),

                  Center(
                    child: Button(
                      text: "Register",
                      onPressed: () {
                        //TODO: REJESTROWANIE FIREBASE 

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Menu()),
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