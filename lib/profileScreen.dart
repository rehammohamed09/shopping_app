import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      appBar: AppBar(title:const Center(child:  Text("Profile Page"))),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            user != null
                ? Column(
              children: [
                Text("Email: ${user.email}", style: const TextStyle(fontSize: 18)),

               const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () async {
                    await FirebaseAuth.instance.signOut();
                    Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    padding:const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  ),
                  child:const Text('Logout', style: TextStyle(fontSize: 18)),
                ),
              ],
            )
                :const Text("No user logged in", style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}