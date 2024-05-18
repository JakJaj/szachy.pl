import 'package:flutter/material.dart';
import 'package:szachy_pl/buttons.dart';
import 'entryField.dart';
import 'menu.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log in'),
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
                  const Center(child: PasswordEntryField(hintText: "Password")),
                  const SizedBox(height: 100),
                  Center(
                    child: Button(
                      text: "Log in",
                      onPressed: () {
                        //TODO: LOGOWANIE FIREBASE 

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