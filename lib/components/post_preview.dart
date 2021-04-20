import 'package:dev_flutter/theme/borders.dart';
import 'package:flutter/material.dart';

import 'post_footer.dart';
import 'post_preview_header.dart';
import 'post_title.dart';
import 'tag.dart';

class PostPreview extends StatelessWidget {
  final String username;
  final String avatarUrl;
  final String postDate;
  final String title;
  final List<String> tags;
  final int likes;
  final int comments;

  const PostPreview({
    required this.username,
    required this.avatarUrl,
    required this.postDate,
    required this.title,
    required this.tags,
    required this.likes,
    required this.comments,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 8),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.white, border: CustomBorder.horizontalBorder),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (avatarUrl.isNotEmpty && username.isNotEmpty)
                PostPreviewHeader(
                    avatarUrl: avatarUrl,
                    username: username,
                    postDate: postDate),
              const SizedBox(height: 12),
              PostTitle(title: title),
              const SizedBox(height: 4),
              Row(children: tags.map((tag) => Tag(tag: tag)).toList()),
              const SizedBox(height: 8),
              PostFooter(likes: likes, comments: comments)
            ]));
  }
}
