import 'package:flutter/material.dart';

import 'menu.dart';
import 'menu_button.dart';

class AppSkeleton extends StatelessWidget {
  const AppSkeleton({
    required this.title,
    required this.child,
    Key? key,
  }) : super(key: key);

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: Theme.of(context).textTheme.headline1,
        ),
        leading: const MenuButton(),
      ),
      drawer: const Menu(),
      body: child,
    );
  }
}
