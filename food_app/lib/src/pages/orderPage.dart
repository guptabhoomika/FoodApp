import 'package:flutter/material.dart';
import '../widgets/order_card.dart';
class Orders extends StatefulWidget {
  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: ListView(
           
        
            
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Ordercard(),
            Ordercard(),
            _buidTotal(),


          ],
       
      ),
    );

  }
  Widget _buidTotal()
  {
    return Container(
      margin: EdgeInsets.only(top:20),
      child: Column(
        children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
              Text("Cart Total",style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.bold),),
             Text("23.0",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)),

        ],

        ),
        
          SizedBox(height: 10,),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
              Text("Discount",style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.bold),),
             Text("3.0",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)),

        ],
        ),
        SizedBox(height: 10,),
            Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
              Text("Tax",style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.bold),),
             Text("0.5",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)),

        ],
        ),
        Divider(height: 40,color: Color(0xFFD3D3D3),),

          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
              Text("Sub Total",style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.bold),),
             Text("26.5",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)),

        ],
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(30.0)
          ),
          child: Center(
            child: Text("Proceed To Checkout",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),) ,
            ),
        )



      ],
      ),

    );
  }
}