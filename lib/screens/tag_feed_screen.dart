import 'package:dev_flutter/components/app_skeleton.dart';
import 'package:dev_flutter/components/tag_card.dart';
import 'package:dev_flutter/temporary/tag_data.dart';
import 'package:flutter/material.dart';

class TagFeedScreen extends StatelessWidget {
  const TagFeedScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppSkeleton(
      title: 'Feed',
      appBody: ListView(
        children: tagData.map(
          (tag) => TagCard(
            tagColor: tag['tagColor'],
            tagName: tag['tagName']
          )
        ).toList(),
      ),
    );
  }
}