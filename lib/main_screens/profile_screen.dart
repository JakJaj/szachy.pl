import 'package:flutter/material.dart';
import 'package:flutter_chess/constants.dart';
import 'package:flutter_chess/providers/authentication_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_chess/models/user_model.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
  
}
class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final userModel = context.read<AuthenticationProvider>().userModel;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Profile', style: TextStyle(color: Colors.white),),
        actions: [
          Text("Logout", 
            style: 
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
          // logout button
          IconButton(
            onPressed: () {
              context
                  .read<AuthenticationProvider>()
                  .signOutUser()
                  .whenComplete(() {
                // navigate to the login screen
                Navigator.pushNamedAndRemoveUntil(
                    context, Constants.loginScreen, (route) => false);
              });
            },
            icon: const Icon(Icons.logout, color: Colors.white,),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            userModel?.image == ''
                      ? CircleAvatar(
                          radius: 150,
                          backgroundImage: AssetImage('assets/images/user_icon.png'),
                        )
                      : CircleAvatar(
                          radius: 150,
                          backgroundImage: NetworkImage(userModel!.image),
                        ),
            
            
            
            
            const SizedBox(height: 50),
            Text(userModel?.name ?? 'No name', style: const TextStyle(fontSize: 24)),
            Text('Rating: ${userModel?.playerRating ?? 'No rating'}', style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
