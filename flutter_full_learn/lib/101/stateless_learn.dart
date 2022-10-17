import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  final String text2 = 'Fatih';

  const StatelessLearn({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        TitleTextWidget(text: text2),
        _emptyBox(),
        const TitleTextWidget(text: 'Fatih2'),
        _emptyBox(),
        const TitleTextWidget(text: 'Fatih3'),
        _emptyBox(),
        const TitleTextWidget(text: 'Fatih4'),
        const _CustomContainer(),
        _emptyBox(),
      ]),
    );
  }

  SizedBox _emptyBox() => const SizedBox(
        height: 18,
      );
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.red));
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline3,
    );
  }
}
