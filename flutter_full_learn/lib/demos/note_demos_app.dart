import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/101/image_learn.dart';

class NoteDemos extends StatelessWidget {
  const NoteDemos({
    super.key,
  });
  final _title = 'Create your first Note';
  final _description = 'Add a note';
  final _createNote = 'Create a note';
  final _importNote = 'Import Notes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(children: [
          PngImage(path: ImageItems().demo),
          _TitleWidget(title: _title, text: 'Selam'),

          // ignore: prefer_const_constructors
          Padding(
              padding: PaddingItems.verticalPadding,
              child: _SubTitleWidget(
                  title: _description, textAlign: TextAlign.center)),
          const Spacer(),
          _createButton(context),
          _createTextButton(),
          const SizedBox(height: ButtonHeight.buttonNormalHeight),
        ]),
      ),
    );
  }

  TextButton _createTextButton() {
    return TextButton(
      onPressed: () {},
      child: Text(_importNote),
    );
  }

  ElevatedButton _createButton(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: SizedBox(
          height: ButtonHeight.buttonNormalHeight,
          child: Center(
            child: Text(
              _createNote,
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
        ));
  }
}

//centered Widget
class _SubTitleWidget extends StatelessWidget {
  const _SubTitleWidget(
      {Key? key, required this.textAlign, required this.title})
      : super(key: key);

  final TextAlign textAlign;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title * 5,
      textAlign: textAlign,
      style: Theme.of(context)
          .textTheme
          .subtitle1
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w400),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    Key? key,
    required this.text,
    required title,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .headline5
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w800),
    );
  }
}

class PaddingItems {
  static const EdgeInsets horizontalPadding =
      EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 10);
}

class ButtonHeight {
  static const double buttonNormalHeight = 50;
}
