import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        const _CustomCard(
          child: SizedBox(height: 200, width: 200),
        ),
        Card(
          margin: ProjectMargins.cardMargin,
          color: Theme.of(context).colorScheme.error,
          shape: const StadiumBorder(),
          child: const SizedBox(height: 200, width: 200),
        ),
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: Colors.cyan,
          child: const SizedBox(height: 100, width: 100),
        ),
      ]),
    );
  }
}

class _CustomCard extends StatelessWidget {
  const _CustomCard({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: ProjectMargins.cardMargin,
      color: Colors.blue,
      child: child,
    );
  }
}

class ProjectMargins {
  static const cardMargin = EdgeInsets.all(10);
}


// Borders StadiumBorder , CircleBorder , RoundedRextangeBorder

