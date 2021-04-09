import 'package:dev_flutter/components/app_skeleton.dart';
import 'package:dev_flutter/components/post_preview.dart';
import 'package:dev_flutter/temporary/post_data.dart';

import 'package:flutter/material.dart';

class PostFeedScreen extends StatelessWidget {
  const PostFeedScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppSkeleton(
      title: 'Feed',
      child: ListView(
          children: postData
              .map((post) => PostPreview(
                    username: post['username'] as String?,
                    avatarUrl: post['avatarUrl'] as String?,
                    postDate: post['postDate'] as String?,
                    title: post['title'] as String?,
                    tags: post['tags'] as List<String>?,
                    likes: post['likes'] as int?,
                    comments: post['comments'] as int?,
                  ))
              .toList()),
    );
  }
}
