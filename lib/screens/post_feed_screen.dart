import 'package:dev_flutter/components/app_skeleton.dart';
import 'package:dev_flutter/components/post_preview.dart';
import 'package:dev_flutter/temporary/post_data.dart';

import 'package:flutter/material.dart';

class PostFeedScreen extends StatelessWidget {
  const PostFeedScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppSkeleton(
      title: 'Feed',
      appBody: ListView(
        children: postData
            .map(
              (post) => PostPreview(
                username: post['username'],
                avatarUrl: post['avatarUrl'],
                postDate: post['postDate'],
                title: post['title'],
                tags: post['tags'],
                likes: post['likes'],
                comments: post['comments'],
              ),
            )
            .toList(),
      ),
    );
  }
}
