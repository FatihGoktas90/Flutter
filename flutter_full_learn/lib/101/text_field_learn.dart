import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/product/language/language_items.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  final key = GlobalKey();
  FocusNode focusNodeTextFieldOne = FocusNode();
  FocusNode focusNodeTextFieldTwo = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            keyboardType: TextInputType.emailAddress,
            autofillHints: const [AutofillHints.email],
            autofocus: true,
            inputFormatters: [TextProjectInputFormatter()._formatter],
            textInputAction: TextInputAction.next,
            focusNode: focusNodeTextFieldOne,
            buildCounter: (BuildContext context,
                {int? currentLength, bool? isFocused, int? maxLength}) {
              return _animatedContainer(currentLength);
            },
            maxLength: 20,
            decoration: _InputDecorator().emailInput,
          ),
          TextFormField(
            focusNode: focusNodeTextFieldTwo,
            maxLines: 4,
            minLines: 2,
          ),
        ],
      ),
    );
  }

  AnimatedContainer _animatedContainer(int? currentLength) {
    return AnimatedContainer(
      key: key,
      duration: const Duration(seconds: 100),
      height: 10,
      width: 10.0 * (currentLength ?? 0),
      // color: Colors.green[100 * (currentLength ?? 0)],
      color: Colors.green,
    );
  }
}

class TextProjectInputFormatter {
  final _formatter = TextInputFormatter.withFunction((oldValue, newValue) {
    // ignore: unrelated_type_equality_checks
    if (newValue == "a") {
      return oldValue;
    } else {
      return oldValue;
    }
  });
}

class _InputDecorator {
  final emailInput = const InputDecoration(
    prefixIcon: Icon(Icons.mail),
    border: OutlineInputBorder(),
    labelText: LanguageItems.mailTitle,

    // fillColor: Colors.amber,
    // filled: true,
  );
}
