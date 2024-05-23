import 'package:flutter/material.dart';
import 'package:flutter_chess/helper/helper_methods.dart';

import 'package:flutter_chess/main_screens/game_time_screen.dart';
import 'package:flutter_chess/main_screens/profile_screen.dart';
import 'package:flutter_chess/providers/game_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final gameProvider = context.read<GameProvider>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'Szachy.pl',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 1,
          childAspectRatio: 3/2,
          children: [
            buildGameType(
              lable: 'Play vs Computer',
              icon: Icons.computer,
              onTap: () {
                gameProvider.setVsComputer(value: true);
                // navigate to setup game time screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GameTimeScreen(),
                  ),
                );
              },
            ),
            buildGameType(
              lable: 'Play vs Friend',
              icon: Icons.videogame_asset,
              onTap: () {
                gameProvider.setVsComputer(value: false);
                // navigate to setup game time screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GameTimeScreen(),
                  ),
                );
              },
            ),
            buildGameType(
              lable: 'Profile',
              icon: Icons.account_box,
              onTap: () {
                // navigate to settings screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
