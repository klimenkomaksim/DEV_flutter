import 'package:dev_flutter/screens/tag_feed/components/fake_tag_card.dart';
import 'package:dev_flutter/services/api.dart';
import 'package:dev_flutter/shared_components/app_skeleton.dart';
import 'package:dev_flutter/shared_components/infinite_scroll_feed.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'components/tag_card.dart';

class TagFeedScreen extends StatelessWidget {
  TagFeedScreen({
    Key? key,
  }) : super(key: key);

  final API api = GetIt.I.get<API>();

  @override
  Widget build(BuildContext context) {
    return AppSkeleton(
      title: 'Tags',
      child: InfiniteScrollFeed(
        element: _tagCardBuilder,
        request: _fetchTags,
        fakeElement: const FakeTagCard(),
        fakeItemsCount: 8,
      ),
    );
  }

  Widget _tagCardBuilder(context, dynamic tag, _) =>
      TagCard(tagColor: tag.backgroundColor, tagName: tag.name);

  Future<dynamic> _fetchTags(int pageNumber) async =>
      api.tag.getByPage(pageNumber);
}
