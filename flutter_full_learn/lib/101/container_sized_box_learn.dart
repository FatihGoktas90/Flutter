import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 200,
            height: 200,
            child: Text('a' * 500),
          ),
          const SizedBox
              .shrink(), // ekranda boş bir alan vermek için kullanıyoruz.
          SizedBox.square(
            dimension: 50,
            child: Text('bbb' * 50),
          ),
          Container(
            //  width: 150,
            // height: 150,
            constraints: const BoxConstraints(
              maxWidth: 200,
              minWidth: 100,
              minHeight: 10,
            ),
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: ProjectUtility.boxDecoration,
            child: Text(
              'aa' * 100,
              maxLines: 2,
            ),
          )
        ],
      ),
    );
  }
}

class ProjectUtility {
  static BoxDecoration boxDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    gradient: const LinearGradient(
      colors: [Colors.cyan, Colors.grey],
    ),
    boxShadow: const [
      BoxShadow(
        color: Colors.green,
        offset: Offset(0.1, 1),
      )
    ],
    // shape: BoxShape.circle,
    border: Border.all(
      width: 10,
      color: Colors.white12,
    ),
  );
}

class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
      : super(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
            colors: [Colors.cyan, Colors.grey],
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.green,
              offset: Offset(0.1, 1),
            )
          ],
          // shape: BoxShape.circle,
          border: Border.all(
            width: 10,
            color: Colors.white12,
          ),
        );
}
