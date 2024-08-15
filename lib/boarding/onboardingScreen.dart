import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../aboutLogin/loginScreen.dart';




class InrtoScreen extends StatelessWidget {
  InrtoScreen({super.key});
  final List<PageViewModel> pages =[
    PageViewModel(
        title: 'First Page',


        body: 'welcome to my app',
        footer: ElevatedButton(
          onPressed: () {},
          child: Text("Let's Go"),
        ),
        image: Center(
            child: Image.asset('assets/images/img_2.png')
        ),
        decoration:const PageDecoration(
            titleTextStyle: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            )
        )
    ),
    PageViewModel(
        title: 'Second Page',
        body: 'this is an online store',
        footer: ElevatedButton(
          onPressed: () {},
          child: Text("Let's Go"),
        ),
        image: Center(
            child: Image.asset('assets/images/img_1.png')
        ),
        decoration:const PageDecoration(
            titleTextStyle: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            )
        )
    ),
    PageViewModel(
        title: 'Third Page',
        body: 'you can shop now',
        footer: ElevatedButton(
          onPressed: () {},
          child: Text("Let's Go"),
        ),
        image: Center(
            child: Image.asset('assets/images/img.png')
        ),
        decoration:const PageDecoration(
            titleTextStyle: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            )
        )
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('On Boarding'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0 ),
        child: IntroductionScreen(
          pages :pages,
          dotsDecorator: const DotsDecorator(
            size: Size(15, 15),
            color: Colors.blue,
            activeSize: Size.square(20),
          ),
          showDoneButton: true,
          done:const Text('Done',style: TextStyle(fontSize: 20),),
          showSkipButton: true,
          skip:const Text('Skip',style: TextStyle(fontSize: 20),),
          showNextButton: true,
          next:const  Icon(Icons.arrow_forward,size: 25,),
          onDone: () => onDone(context),

        ),
      ),
    );

  }
  void onDone(context)async{
    final prefs= await SharedPreferences.getInstance();
    await prefs.setBool('ON_BOARDING', false);
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>const LoginScreen()));
  }
}

