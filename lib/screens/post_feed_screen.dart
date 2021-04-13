import 'package:dev_flutter/components/app_skeleton.dart';
import 'package:dev_flutter/components/post_preview.dart';
import 'package:dev_flutter/temporary/post_feed_data.dart';

import 'package:flutter/material.dart';

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
                    comments: post.commentsCount as int,
                    likes: post.likesCount as int,
                    postDate: post.publishDate,
                    tags: post.tags,
                    title: post.title,
                  ))
              .toList()),
    );
  }
}
