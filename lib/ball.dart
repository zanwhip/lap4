import 'dart:math';

import 'package:flutter/material.dart';

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.blue[600],
        title: const Text('Ask Me Anything'),
      ),
      body: Center(
        child: TextButton(
            onPressed: () => {
                  setState(() {
                    ballNumber = Random().nextInt(5) + 1;
                  })
                },
            child: Image.asset('images/ball$ballNumber.png')),
      ),
    );
  }
}
