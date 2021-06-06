import 'package:dev_flutter/bloc/article/article_bloc.dart';
import 'package:dev_flutter/screens/tag_feed/components/fake_tag_card.dart';
import 'package:dev_flutter/shared_components/app_skeleton.dart';
import 'package:dev_flutter/shared_components/infinite_scroll_feed.dart';
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
      child: InfiniteScrollFeed(
        elementBuilder: _tagCardBuilder,
        fakeElement: const FakeTagCard(),
        fakeItemsCount: 8,
        eventCreator: _getRequestEvent,
      ),
    );
  }

  Widget _tagCardBuilder(context, dynamic tag, _) =>
      TagCard(tagColor: tag.backgroundColor, tagName: tag.name);

  BlocEvent _getRequestEvent(int pageNumber) => GetTags(pageNumber);
}
