import 'package:flutter/material.dart';

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset('images/oops.png'),
      Text('Something went wrong...',
          style: Theme.of(context).textTheme.headline2)
    ]));
  }
}
