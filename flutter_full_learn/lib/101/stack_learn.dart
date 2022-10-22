import 'package:flutter/material.dart';

class StackLearn extends StatelessWidget {
  const StackLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Container(color: Colors.red, height: 100),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(color: Colors.blue, height: 100),
          ),
          Positioned(
              // right: 30,
              //left: 10,
              //bottom: 20,
              width: 25,
              bottom: 0,
              height: 50,
              child: Container(color: Colors.green)),
          Positioned.fill(
              top: 130,
              child: Container(color: const Color.fromARGB(255, 169, 141, 31))),
        ],
      ),
    );
  }
}
