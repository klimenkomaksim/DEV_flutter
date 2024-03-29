import 'package:dev_flutter/bloc/feed/feed_bloc.dart';
import 'package:dev_flutter/shared_components/app_skeleton.dart';
import 'package:dev_flutter/shared_components/infinite_scroll_feed.dart';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'components/fake_post_preview.dart';
import 'components/post_preview.dart';

class PostFeedScreen extends StatelessWidget {
  const PostFeedScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tagName = ModalRoute.of(context)!.settings.arguments as String?;
    final feedKey = AppLocalizations.of(context)!.feed;

    return AppSkeleton(
        title: tagName ?? feedKey,
        child: InfiniteScrollFeed(
          elementBuilder: _postPreviewBuilder,
          fakeElement: const FakePostPreview(),
          fakeItemsCount: 6,
          eventCreator: _getEventCreator(tagName),
        ));
  }

  ValueSetter<int> _getEventCreator(String? tagName) =>
      tagName == null ? _getArticles : _getArticlesByTag(tagName);

  FeedEvent _getArticles(int pageNumber) => GetArticles(pageNumber);

  ValueSetter<int> _getArticlesByTag(String tagName) =>
      (pageNumber) => GetArticlesByTag(pageNumber, tagName);

  Widget _postPreviewBuilder(context, dynamic post, _) => PostPreview(
      username: post.username,
      avatarUrl: post.profileImage,
      postDate: post.publishDate,
      title: post.title,
      tags: post.tags,
      likes: post.likesCount,
      comments: post.commentsCount,
      id: post.id);
}
