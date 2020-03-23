import 'package:flutter/material.dart';
import '../pages/homePage.dart';
import '../pages/orderPage.dart';
import '../pages/fav.dart';
import '../pages/profile.dart';
class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  HomePage homepage;
  Orders orders;
  FavPage fav;
  Profile profile;
  int currentabindex =0;
  List<Widget> pages;
  Widget cuurentpage;
  @override
  void initState() {
    
    super.initState();
    homepage = HomePage();
    orders = Orders();
    fav = FavPage();
    profile = Profile();
    pages = [homepage,orders,fav,profile];
    cuurentpage = homepage;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentabindex,
        type: BottomNavigationBarType.fixed,
        onTap: (int index){
          setState(() {
            currentabindex = index;
            cuurentpage = pages[index];
          });
        },
        items: 
      <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text("Home")

        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          title: Text("Orders"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          title: Text("Favourite") 
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile")
            ),

      ]),
      body: cuurentpage,
      appBar: currentabindex==1 ? AppBar(
        title: Text("Your Food Cart",style: TextStyle(color: Colors.black),),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
      ) : null,
      
    );
  }
}