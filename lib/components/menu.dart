import 'package:dev_flutter/consts/menu_item_data.dart';
import 'package:flutter/material.dart';
import 'menu_header.dart';
import 'menu_item.dart';

class Menu extends StatelessWidget {
  const Menu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(children: [
      const MenuHeader(),
      ...menuItemsData.map((item) => MenuItem(
          name: item.name, svgPath: item.svgPath, routeName: item.routeName))
    ]));
  }
}
