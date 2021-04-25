import 'package:dev_flutter/services/api.dart';
import 'package:dev_flutter/shared_components/app_skeleton.dart';
import 'package:dev_flutter/shared_components/infinite_scroll_feed.dart';
import 'package:get_it/get_it.dart';

import 'package:flutter/material.dart';

import 'components/fake_post_preview.dart';
import 'components/post_preview.dart';

class PostFeedScreen extends StatelessWidget {
  PostFeedScreen({
    Key? key,
  }) : super(key: key);

  final API api = GetIt.I.get<API>();

  @override
  Widget build(BuildContext context) {
    final tagName = ModalRoute.of(context)!.settings.arguments as String?;
    final requestCallback = _getRequestCallback(tagName);

    return AppSkeleton(
      title: tagName ?? 'Feed',
      child: InfiniteScrollFeed(
        element: _postPreviewBuilder,
        fakeElement: const FakePostPreview(),
        fakeItemsCount: 6,
        request: requestCallback,
      ),
    );
  }

  Future<dynamic> Function(int) _getRequestCallback(String? tagName) =>
      tagName == null ? _fetchPosts : _getFetchByTagCallback(tagName);

  Future<dynamic> Function(int) _getFetchByTagCallback(String tagName) =>
      (pageNumber) async {
        return api.article.getByTagAndPage(tagName, pageNumber);
      };

  Future<dynamic> _fetchPosts(int pageNumber) async =>
      api.article.getByPage(pageNumber);

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
