import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Scaffold.of(context).openDrawer();
      },
      child: Container(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
        child: SvgPicture.asset('images/menu_button.svg', width: 24),
      ),
    );
  }
}
