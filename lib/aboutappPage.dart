import 'package:flutter/material.dart';

class AboutAppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Center(child:  Text("About App"))),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          "This application is designed to provide users with an intuitive and seamless experience, offering various features across multiple screens. The app includes a home screen for easy navigation, a categories screen for organized content, a profile screen for personalized user information, and dedicated screens to learn more about the app and the development team. Built using Flutter, the application focuses on delivering high performance and a user-friendly interface, ensuring accessibility and efficiency for all users. Whether you're exploring categories, managing your profile, or learning about the app, this application is crafted to meet your needs with precision and care.",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
