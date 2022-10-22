import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            // SizedBox(
            //   width: 300,
            //   height: 400,
            //   child: Image.asset(ImageItems().cartoon
            //       // fit: BoxFit.cover,
            //       ),
            // ),
            SizedBox(
              width: 300,
              height: 400,
              child: PngImage(path: ImageItems().withoutPath),
            ),
            Image.network(
              'https://www.google.com/url?sa=i&url=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FPortable_Network_Graphics&psig=AOvVaw3IQFHMYDf1MC6wuGGXsSXR&ust=1666123797869000&source=images&cd=vfe&ved=0CA0QjRxqFwoTCKiijNGJ6PoCFQAAAAAdAAAAABAE',
              errorBuilder: (context, error, stackTrace) =>
                  const Icon(Icons.abc_outlined),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageItems {
  final String cartoon = 'assets/cartoon.png';
  final String demo = 'assets/png/demo.png';
  final String withoutPath = 'cartoon';
}

class PngImage extends StatelessWidget {
  const PngImage({super.key, required this.path});

  final String path;

  @override
  Widget build(BuildContext context) {
    return Image.asset(_nameWithPath);
  }

  String get _nameWithPath => 'assets/$path.png';
}
