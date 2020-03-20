import 'package:flutter/material.dart';
class BoughtFood extends StatefulWidget {
  final int id;
   final String name;
  final String imgPath;
  final String category;
  final double price;
  final double disc;
  final int rating;
  BoughtFood({this.id,this.name,this.imgPath,this.category,this.price,this.disc,this.rating});
  @override
  _BoughtFoodState createState() => _BoughtFoodState();
}

class _BoughtFoodState extends State<BoughtFood> {
 
 
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
            
          child: Stack(
        children: <Widget>[
          Container(
              height: 200,
              width: 340,
              child: Image.asset(widget.imgPath,fit:BoxFit.cover),
          ),
          Positioned(
            left: 0.0,
            bottom: 0.0,
                    child: Container(
              height: 60,
              width: 340,
              decoration: BoxDecoration(
               gradient: LinearGradient(
                 colors:[Colors.black,Colors.black12],
                 begin: Alignment.bottomCenter,
                 end: Alignment.topCenter
               )
              ),
            ),
          ),
          Positioned(
            left: 10.0,
            bottom: 10.0,
            right: 10.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(widget.name,style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.star,color: Theme.of(context).primaryColor,size: 16,),
                        Icon(Icons.star,color: Theme.of(context).primaryColor,size: 16,),
                        Icon(Icons.star,color: Theme.of(context).primaryColor,size: 16,),
                        Icon(Icons.star,color: Theme.of(context).primaryColor,size: 16,),
                        Icon(Icons.star,color: Theme.of(context).primaryColor,size: 16,),
                        SizedBox(
                            width: 20,
                        ),
                        Text(widget.rating.toString() + " reviews",
                        style: TextStyle(color: Colors.grey),)

                    ],
                    ),

                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(widget.price.toString(),style: TextStyle(
                      color: Colors.orangeAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),),
                    Text("Min order",style: TextStyle(
                      color: Colors.grey,
                      //fontWeight: FontWeight.bold,
                      //fontSize: 16
                    ),)

                  ],
                ),

            ],
            ),
          ),

        ],
        
      ),
    );
  }
}