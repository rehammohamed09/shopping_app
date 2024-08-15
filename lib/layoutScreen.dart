import 'package:flutter/material.dart';
import 'package:untitled9/specificToSectionDisplay/categoriesScreen.dart';


import 'homeScreen.dart';

import 'profileScreen.dart';
import 'aboutappPage.dart';
import 'aboutteamScreen.dart';



class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});
  @override
  State<LayoutScreen> createState() => _TaskLayoutScreenState();
}class _TaskLayoutScreenState extends State<LayoutScreen> {
  int bottomNabBarIndex = 0;
  List pages =[
     MainPage (),
     ProfilePage (),
    CategoriesScreen (),
     AboutAppPage (),
     AboutTeamPage (),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // appBar: AppBar(
      //  title:const Text("Layout Screen"),),
      body: pages[bottomNabBarIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
         backgroundColor: Colors.blue,

        currentIndex: bottomNabBarIndex,
        onTap: (index){
          setState(() {
            bottomNabBarIndex = index;
          });},
        items:const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'About App',
          ),BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'About Team',
          ),
        ],
      ),
    );
  }
}