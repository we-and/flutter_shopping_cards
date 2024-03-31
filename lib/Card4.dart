import 'package:flutter/material.dart';

class Card4 extends StatelessWidget {

  final double width;
  final double height;
  final double score;

  const Card4(this.width, this.height,this.score, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
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
            Text("STORE Name"),
            Text("Address",style: TextStyle(color: Colors.grey),),
            Wrap(children: [
              Icon(Icons.star, color: Colors.yellow,),
              Text(score.toString(),style: TextStyle(fontSize: 12),)
            ],),
            Wrap(children: [
              ProductView('https://m.media-amazon.com/images/I/812tZPyk0fL.jpg'),
              ProductView('https://m.media-amazon.com/images/I/812tZPyk0fL.jpg'),
              ProductView('https://m.media-amazon.com/images/I/812tZPyk0fL.jpg'),
              ProductView('https://m.media-amazon.com/images/I/812tZPyk0fL.jpg'),
              ProductView('https://m.media-amazon.com/images/I/812tZPyk0fL.jpg')
            ],)
          ],),
        )
      ],),
    );
  }
}
class ProductView extends StatelessWidget{
  final String url;
  const ProductView(this.url, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(color: Colors.grey.shade300,borderRadius: BorderRadius.circular(10)),
        width: 40,height: 40,
        child: Image(image:
      NetworkImage(url)));
  }
}