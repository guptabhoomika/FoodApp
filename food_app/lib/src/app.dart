import 'package:flutter/material.dart';
import 'package:food_app/src/pages/signInPage.dart';


class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Food App",
      theme: ThemeData(
        primaryColor: Colors.blue
        
      ),

      home: SignInPage(),

      
    );
  }
}