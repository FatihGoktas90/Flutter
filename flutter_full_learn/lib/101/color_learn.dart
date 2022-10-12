import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  ColorLearn({super.key});

  final ColorsItems iconColor = ColorsItems();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Theme.of(context).errorColor,
        child: Text(
          'Hello',
          style: Theme.of(context).textTheme.subtitle1?.copyWith(
                color: Theme.of(context).errorColor,
              ),
        ),
      ),
    );
  }
}

class ColorsItems {
  static const Color porchase = Color(0xffEDBF61);
  final Color sulu = const Color.fromARGB(255, 103, 20, 129);
}
