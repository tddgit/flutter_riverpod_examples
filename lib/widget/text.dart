import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(this.text, {Key? key}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 40,
      ),
    );
  }
}
