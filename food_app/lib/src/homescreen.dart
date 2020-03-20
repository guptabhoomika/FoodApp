import 'package:flutter/material.dart';
import 'package:food_app/src/widgets/boughtFood.dart';
import 'package:food_app/src/widgets/food_category.dart';
import 'package:food_app/src/widgets/home_top.dart';
import 'package:food_app/src/widgets/search.dart';
import './data/food.dart';
import './models/food_model.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Food> _food = foods;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top:50.0,left:19,right:20),
        children: <Widget>[
          HomeTop(),
          FoodCat(),
          SizedBox(
            height: 20,
          ),
          Search(),
           SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Frequently Bought Foods",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
              ),
              GestureDetector(
                onTap: (){print("Tap");},
                              child: Text("View all",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.orangeAccent
                ),
                ),
              ),

          ],
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: _food.map(_buildlist).toList()

          ),

        ],
      ),
      
    );
  }
  Widget _buildlist(Food food){
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: BoughtFood(
    id: food.id, 
    name: food.name,
    imgPath: food.imgPath, 
    category: food.category,
    price: food.price,
    rating: food.rating,
    disc: food.disc

      ),

    );
  }
}