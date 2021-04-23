import 'package:dev_flutter/shared_components/app_skeleton.dart';
import 'package:dev_flutter/temporary/post_feed_data.dart';

import 'package:flutter/material.dart';

import 'components/post_preview.dart';

class PostFeedScreen extends StatelessWidget {
  const PostFeedScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageTitle = ModalRoute.of(context)!.settings.arguments as String?;

    return AppSkeleton(
        title: pageTitle ?? 'Feed',
        child: ListView(
            children: postFeedData
                .map((post) => PostPreview(
                    username: post.username,
                    avatarUrl: post.profileImage,
                    comments: post.commentsCount,
                    likes: post.likesCount,
                    postDate: post.publishDate,
                    tags: post.tags,
                    title: post.title))
                .toList()));
  }
}