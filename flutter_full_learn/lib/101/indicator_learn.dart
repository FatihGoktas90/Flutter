import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: const [CenterCircularRedProgress()]),
      body: const LinearProgressIndicator(
        color: Colors.blue,
        backgroundColor: Colors.grey,
      ),
    );
  }
}

class CenterCircularRedProgress extends StatelessWidget {
  const CenterCircularRedProgress({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: Colors.red,
        strokeWidth: 5,
        value: 0.9,
        backgroundColor: Colors.white,
      ),
    );
  }
}
