import 'package:flutter/material.dart';

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 140),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Image.asset('images/oops.png'),
          const SizedBox(height: 20),
          Text('Something went wrong...',
              style: Theme.of(context).textTheme.headline1)
        ]));
  }
}
