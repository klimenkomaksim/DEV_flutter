import 'package:flutter/material.dart';

class CenteredSpinner extends StatelessWidget {
  const CenteredSpinner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}
