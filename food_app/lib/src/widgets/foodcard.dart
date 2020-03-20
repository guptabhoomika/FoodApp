import 'package:flutter/material.dart';
class FoodCard extends StatelessWidget {
  final String catName;
  final String imgPath;
  final int itemNum;
  FoodCard({this.catName,this.imgPath,this.itemNum});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20.0),
      child: Card(
        
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
          child: Row(
            children: <Widget>[
              Image(
                image: AssetImage(imgPath),
                height: 65,
                width: 65,

              ),
              SizedBox(
                width: 20,
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(catName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  Text(itemNum.toString()+" kinds")
                ],

              ),

          ],
          ),
        ),
        
      ),
    );
  }
}