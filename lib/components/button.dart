import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    @required this.onPress,
    @required this.title,
    Key key,
  }) : super(key: key);
  
  final Function onPress;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      child: Text(title),
    );
  }
}
