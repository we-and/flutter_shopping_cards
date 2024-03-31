import 'package:flutter/material.dart';
import 'package:flutter_shopping_cards/Card1.dart';
import 'package:flutter_shopping_cards/Card2.dart';
import 'package:flutter_shopping_cards/Card3.dart';
import 'package:flutter_shopping_cards/Card4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Your shopping cards'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double cardWidth = screenWidth - 40;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(widget.title),
        ),
        body: Center(
          child: Container(color: Colors.grey.shade200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const Text('Card1'),
                Card1(cardWidth, 180),
                Card2(cardWidth,180),
                Card3(cardWidth,180,4.5,8.0,8.0),
                Card4(cardWidth, 180,4.2),
              ],
            ),
          ),
        ));
  }
}
