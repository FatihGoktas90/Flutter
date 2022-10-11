import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  const TextLearnView({super.key, this.userName});
  final String name = 'Fatih';
  final String? userName;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome $name ${name.length}',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            textScaleFactor: 1,
            style: ProjectStyle.welcomeStyle,
          ),
          Text(
            'Welcome $name ${name.length}',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            textScaleFactor: 1,
            style: ProjectStyle.welcomeStyle,
          ),
          Text(
            'Welcome $name ${name.length}',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            textScaleFactor: 1,
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: ProjectColors.welcomeColor),
          ),
          Text(userName ?? ''),
          const Text('Merhaba'),
        ],
      ),
    );
  }
}

class ProjectStyle {
  static TextStyle welcomeStyle = const TextStyle(
    wordSpacing: 2,
    letterSpacing: 2,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    decoration: TextDecoration.underline,
    fontStyle: FontStyle.italic,
    color: Colors.lime,
  );
}

class ProjectColors {
  static Color welcomeColor = Colors.blue;
}

class ProjectKeys {
  final String welcome = 'Merhaba';
}
