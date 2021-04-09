import 'package:flutter/material.dart';

class PostTitle extends StatelessWidget {
  const PostTitle({
    required this.title,
    Key? key,
  }) : super(key: key);

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Text(title!, style: Theme.of(context).textTheme.headline3);
  }
}
