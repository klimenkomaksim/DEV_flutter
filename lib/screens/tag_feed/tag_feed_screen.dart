import 'package:dev_flutter/shared_components/app_skeleton.dart';
import 'package:dev_flutter/temporary/tag_data.dart';
import 'package:flutter/material.dart';

import 'components/tag_card.dart';

class TagFeedScreen extends StatelessWidget {
  const TagFeedScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppSkeleton(
        title: 'Tags',
        child: ListView(
            children: tagData
                .map((tag) =>
                    TagCard(tagColor: tag.backgroundColor, tagName: tag.name))
                .toList()));
  }
}
