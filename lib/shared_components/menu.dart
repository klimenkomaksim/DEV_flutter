import 'package:dev_flutter/consts/menu_item_data.dart';
import 'package:dev_flutter/shared_components/locale_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'menu_header.dart';
import 'menu_item.dart';

class Menu extends StatelessWidget {
  const Menu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appLocalizations = AppLocalizations.of(context)!;
    final menuItemsData = getMenuItemsData(appLocalizations);

    return Drawer(
        child: ListView(children: [
      const MenuHeader(),
      ...menuItemsData.map((item) => MenuItem(
            name: item.name,
            svgPath: item.svgPath,
            routeName: item.routeName,
          )),
      const ListTile(
          contentPadding: EdgeInsets.fromLTRB(20, 50, 0, 0),
          leading: LocaleButton()),
    ]));
  }
}
