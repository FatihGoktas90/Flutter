import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({super.key});
  final IconSizes iconSize = IconSizes();
  final IconColors iconColors = IconColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello'),
      ),
      body: Column(
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message_outlined,
                color: Theme.of(context).colorScheme.error,
                size: IconSizes().iconSmall,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message_outlined,
                color: iconColors.chambray,
                // size: IconSizes.iconSmall2x,
                size: iconSize.iconSmall,
              )),
          const SizedBox(
            height: 50,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message_outlined,
                color: iconColors.chambray,
                size: iconSize.iconSmall,
              )),
        ],
      ),
    );
  }
}

class IconSizes {
  final double iconSmall = 40;
  static double iconSmall2x = 80;
}

class IconColors {
  final Color chambray = const Color(0xff3F5C8D);
}
