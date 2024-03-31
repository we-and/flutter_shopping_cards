import 'package:flutter/material.dart';

class Card3 extends StatelessWidget {

  final double width;
  final double height;
  final double score;
  final double price;
  final double distance;

  const Card3(this.width, this.height,this.score,this.price,this.distance, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: EdgeInsets.fromLTRB(0,0,0,10),
      padding: EdgeInsets.fromLTRB(10,0,10,0),
      decoration: BoxDecoration(
          color: Colors.white
          ,borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start
        ,mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            'assets/card_trolley_icon.png',
            width: 80,
            height: 120,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: width-120,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[ Text("Online market"),
                      Icon(Icons.favorite_border,size: 18,)
                      ]),
                ),
                Wrap(children: [
                  Icon(Icons.star, color: Colors.yellow,),
                  Text(score.toString(),style: TextStyle(fontSize: 12),)
                ],),
                Text("km from you",style: TextStyle(color: Colors.grey),),

                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [

  Icon(Icons.info,color: Colors.grey,size: 16,)
,
SizedBox(width: 5,height: 1,),
        Text("start from ",style: TextStyle(color: Colors.grey),)
                  ,Text("\$"+price.toString()),
                ],)
              ],),
          )
        ],),
    );
  }
}