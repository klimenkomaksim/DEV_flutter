import 'package:dev_flutter/theme/colors.dart';
import 'package:flutter/material.dart';

import 'tag.dart';

class PostHeader extends StatelessWidget {
  const PostHeader(
      {required this.title,
      required this.profileImageUrl,
      required this.username,
      required this.publishDate,
      required this.tags,
      Key? key})
      : super(key: key);

  final String title;
  final String profileImageUrl;
  final String username;
  final String publishDate;
  final List<String> tags;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(title, style: Theme.of(context).textTheme.headline1),
      Wrap(children: tags.map((tag) => Tag(tag: tag)).toList()),
      const SizedBox(height: 16),
      Row(children: [
        CircleAvatar(
            backgroundImage: NetworkImage(profileImageUrl), radius: 16),
        const SizedBox(width: 8),
        Text(username,
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(color: CustomColors.primaryText)),
        Text('・$publishDate')
      ])
    ]);
  }
}
