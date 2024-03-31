import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shopping_cards/Card1.dart';

class Card2 extends StatelessWidget {
  final double width;
  final double height;

  const Card2(this.width, this.height, {super.key});

  @override
  Widget build(BuildContext context) {
    double bgImageHeight = height - 70;

    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), boxShadow: [
        BoxShadow(
          color: Colors.transparent,//.withOpacity(0.3),
          spreadRadius: 2,
          blurRadius: 3,
          offset: Offset(0, 0),
        )
      ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(children: [
          Container(
            width: width,
            height: height,
            child: Column(
              children: [
                Card1Cover('https://hips.hearstapps.com/hmg-prod/images/fresh-sliced-mini-kiwis-royalty-free-image-1690215764.jpg', width, bgImageHeight),
                Card2Header("Online market", "House: 00, Road", 8.0, 4.5)
              ],
            ),
          ),
          Positioned(
              top: bgImageHeight-25,
              left:10,child: Card1Icon('https://cdn1.iconfinder.com/data/icons/social-messaging-ui-color-shapes/128/store-circle-green-512.png', 35))
        ]),
      ),
    );
  }
}

class Card2Header extends StatelessWidget {
  final String title;
  final String address;
  final double distance;
  final double score;

  const Card2Header(this.title, this.address, this.distance, this.score, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight:  Radius.circular(10),
          )
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Wrap(
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Icon(Icons.car_rental,size: 14,color: Colors.red,),
                SizedBox(width: 10,height: 1,),
                Text(
                  address,
                  style: TextStyle(color: Colors.grey.shade700,),
                ),
                SizedBox(
                  width: 20,
                  height: 1,
                ),
              ],
            )
          ],
        ),
        Column(
          children: [
            Wrap(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 16,
                ),
                 Text(
                  score.toString(),style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            Text("items",style: TextStyle(fontSize: 12,color: Colors.grey.shade700))

          ],
        )
      ]),
    );
  }
}
