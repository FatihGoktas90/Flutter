import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '101/color_learn.dart';
import '101/image_learn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        cardTheme: CardTheme(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        // iconTheme: const IconThemeData(
        //   color: Colors.red,
        // )
        errorColor: ColorsItems.porchase,
      ),
      home: const ImageLearn(),
    );
  }
}
