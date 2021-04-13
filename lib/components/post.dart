import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

import 'post_header.dart';

class Post extends StatelessWidget {
  const Post({
    required this.title,
    required this.coverImageUrl,
    required this.profileImageUrl,
    required this.username,
    required this.publishDate,
    required this.data,
    required this.tags,
    Key? key,
  }) : super(key: key);

  final String? title;
  final String? coverImageUrl;
  final String? profileImageUrl;
  final String? username;
  final String? publishDate;
  final String? data;
  final List<String>? tags;

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Image(image: NetworkImage(coverImageUrl!)),
      Padding(
        padding: const EdgeInsets.only(left: 12, top: 12, right: 12),
        child: PostHeader(
            title: title!,
            profileImageUrl: profileImageUrl!,
            username: username!,
            publishDate: publishDate!,
            tags: tags!),
      ),
      Padding(
          padding: const EdgeInsets.only(left: 12, top: 28, right: 12),
          child: HtmlWidget(data!,
              textStyle: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontWeight: FontWeight.normal))),
    ]);
  }
}
