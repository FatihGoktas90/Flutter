import 'package:flutter/material.dart';

class ColumnRawLearn extends StatelessWidget {
  const ColumnRawLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Expanded(
          flex: 4,
          child: Row(
            children: [
              Expanded(child: Container(color: Colors.red)),
              Expanded(child: Container(color: Colors.green)),
              Expanded(child: Container(color: Colors.purple)),
              Expanded(child: Container(color: Colors.yellow)),
            ],
          ),
        ),
        const Spacer(flex: 2),
        Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize:
                  MainAxisSize.max, //min sadece olduğu alanı alır min olarak
              children: const [
                Text('a1'),
                Text('a2'),
                Text('a3'),
              ],
            )),
        const Expanded(flex: 2, child: FlutterLogo()),
        Container(
          height: ProjectContainerSizes.cardHeight,
          child: Column(
            children: const [
              // SizedBox(width: 50, child: Text('data')),
              // SizedBox(width: 50, child: Text('data')),
              // SizedBox(width: 50, child: Text('data')),
              // SizedBox(width: 50, child: Text('data'))
              Expanded(child: Text('data')),
              Expanded(child: Text('data')),
              Expanded(child: Text('data')),
              Expanded(child: Text('data')),
            ],
          ),
        ),
      ]),
    );
  }
}

class ProjectContainerSizes {
  static const double cardHeight = 200;
}
