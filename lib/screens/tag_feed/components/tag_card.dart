import 'package:dev_flutter/consts/app_routes.dart';
import 'package:dev_flutter/consts/border_radius.dart';
import 'package:dev_flutter/consts/borders.dart';
import 'package:dev_flutter/shared_components/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'tag_title.dart';

class TagCard extends StatelessWidget {
  const TagCard({
    required this.tagColor,
    required this.tagName,
    Key? key,
  }) : super(key: key);

  final String tagName;
  final Color tagColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 16, right: 16, top: 16),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: CustomBorderRadius.radius,
            border: CustomBorder.allBorder),
        child: ClipRRect(
            borderRadius: CustomBorderRadius.radius,
            child: Column(children: [
              Container(height: 16, color: tagColor),
              _TagCardBody(tagName: tagName)
            ])));
  }
}

class _TagCardBody extends StatelessWidget {
  const _TagCardBody({
    required this.tagName,
    Key? key,
  }) : super(key: key);

  final String tagName;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TagTitle(tagName: tagName),
              Button(
                  title: AppLocalizations.of(context)!.open,
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.postFeedPage,
                        arguments: tagName);
                  })
            ]));
  }
}
