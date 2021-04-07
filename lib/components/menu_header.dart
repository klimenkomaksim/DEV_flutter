import 'package:flutter/material.dart';

class MenuHeader extends StatelessWidget {
  const MenuHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: DrawerHeader(
        margin: const EdgeInsets.all(12),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          'DEV Community',
          style: Theme.of(context).textTheme.headline3,
        )
      ),
    );
  }
}
