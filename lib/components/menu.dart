import 'package:flutter/material.dart';
import 'menu_header.dart';
import 'menu_item.dart';

const menu = [
  {'title': 'Home', 'svgName': 'home'},
  {'title': 'Litstings', 'svgName': 'listings'},
  {'title': 'Podcasts', 'svgName': 'podcast'},
  {'title': 'Video', 'svgName': 'video'},
  {'title': 'Tags', 'svgName': 'tag'},
];

class Menu extends StatelessWidget {
  const Menu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const MenuHeader(),
          ...menu.map((item) =>
              MenuItem(title: item['title'], svgName: item['svgName']))
        ],
      ),
    );
  }
}
