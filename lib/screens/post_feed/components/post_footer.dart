import 'package:dev_flutter/consts/app_routes.dart';
import 'package:dev_flutter/shared_components/button.dart';
import 'package:dev_flutter/shared_components/reaction.dart';
import 'package:flutter/material.dart';

class PostFooter extends StatelessWidget {
  const PostFooter({
    required this.likes,
    required this.comments,
    required this.id,
    Key? key,
  }) : super(key: key);

  final int likes;
  final int comments;
  final int id;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Reaction(reactionCount: likes, svgPath: 'images/heart.svg'),
      Reaction(reactionCount: comments, svgPath: 'images/comment.svg'),
      const Spacer(),
      Button(
          title: 'Open',
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.postPage, arguments: id);
          })
    ]);
  }
}
