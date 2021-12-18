import 'package:dev_flutter/bloc/feed/feed_bloc.dart';
import 'package:dev_flutter/screens/tag_feed/components/fake_tag_card.dart';
import 'package:dev_flutter/shared_components/app_skeleton.dart';
import 'package:dev_flutter/shared_components/infinite_scroll_feed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'components/tag_card.dart';

class TagFeedScreen extends StatelessWidget {
  const TagFeedScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppSkeleton(
      title: AppLocalizations.of(context)!.tags,
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

  FeedEvent _getRequestEvent(int pageNumber) => GetTags(pageNumber);
}
