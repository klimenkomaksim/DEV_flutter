import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  const Tag({
    required this.tag,
    Key? key,
  }) : super(key: key);

  final String tag;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 4, right: 8, bottom: 4),
      child: Text(
        '#$tag',
        style: Theme.of(context).textTheme.bodyText2,
      ),
    );
  }
}
