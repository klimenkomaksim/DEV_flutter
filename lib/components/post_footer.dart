import 'package:dev_flutter/consts/app_routes.dart';
import 'package:flutter/material.dart';

import 'button.dart';
import 'reaction.dart';

class PostFooter extends StatelessWidget {
  const PostFooter({
    required this.likes,
    required this.comments,
    Key? key,
  }) : super(key: key);

  final int likes;
  final int comments;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Reaction(reactionCount: likes, svgPath: 'images/heart.svg'),
      Reaction(reactionCount: comments, svgPath: 'images/comment.svg'),
      const Spacer(),
      Button(
          title: 'Open',
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.postPage);
          })
    ]);
  }
}
