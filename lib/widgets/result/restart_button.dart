import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RestartButton extends StatelessWidget {
  final String text;
  final VoidCallback callback;

  const RestartButton({required this.text, required this.callback, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        child: CupertinoButton.filled(
          onPressed: callback,
          child: Text(text.toUpperCase()),
        ));
  }
}
