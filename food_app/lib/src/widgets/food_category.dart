import 'package:flutter/material.dart';
import 'package:food_app/src/widgets/foodcard.dart';
import '../data/categor_data.dart';
import '../models/category_model.dart';
class FoodCat extends StatelessWidget {
  final List<Category> _category  = catagories;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      
          child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _category.length,
        itemBuilder: (BuildContext context,int index){
          return FoodCard(
            catName: _category[index].name,
            imgPath: _category[index].imgPath,
            itemNum: _category[index].itemNum,
          );
        },
        
      ),
    );
  }
}