import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    required this.onPressed,
    required this.title,
    Key? key,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: Text(title));
  }
}
