import 'dart:math';
import 'package:flutter/material.dart';

class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  
  int ballCount = 1;
  void onTap() {
    setState(() {
      ballCount = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(
          child: Text(
            'ASK ME ANYTHING',
            style: TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: GestureDetector(
            onTap: onTap,
            child: Image.asset('images/ball$ballCount.png'),
          ),
        ),
      ),
    );
  }
}
