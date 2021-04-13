import 'package:dev_flutter/consts/app_routes.dart';
import 'package:dev_flutter/theme/border_radius.dart';
import 'package:dev_flutter/theme/borders.dart';
import 'package:flutter/material.dart';

import 'button.dart';
import 'tag_title.dart';

class TagCard extends StatelessWidget {
  const TagCard({
    required this.tagColor,
    required this.tagName,
    Key? key,
  }) : super(key: key);

  final String? tagName;
  final Color? tagColor;

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
        child: Column(
          children: [
            Container(height: 16, color: tagColor),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TagTitle(tagName: tagName),
                    Button(
                        title: 'Open',
                        onPress: () {
                          Navigator.pushNamed(context, AppRoutes.postFeedPage,
                              arguments: tagName);
                        }),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
