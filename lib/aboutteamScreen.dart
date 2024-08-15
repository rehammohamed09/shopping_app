import 'package:flutter/material.dart';

class AboutTeamPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child:  Text("About Team"))),
      body: const Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Developed by:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text("Reham Mohamed",style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text(
                "I am a student entering my fourth year of Computer Science and Information. I have a strong passion for technology and software development. Currently, I am a beginner in the Flutter track, where I am learning to build cross-platform mobile applications. My goal is to deepen my understanding of app development and explore new technologies that can help me create efficient and user-friendly applications",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
