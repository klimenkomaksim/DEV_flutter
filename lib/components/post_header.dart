import 'package:dev_flutter/theme/colors.dart';
import 'package:flutter/material.dart';

class PostHeader extends StatelessWidget {
  const PostHeader({
    @required this.avatarUrl,
    @required this.username,
    @required this.postDate,
    Key key,
  }) : super(key: key);

  final String avatarUrl;
  final String username;
  final String postDate;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(avatarUrl),
          radius: 16,
        ),
        const SizedBox(width: 8),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              username,
              style: Theme.of(context).textTheme.bodyText2.copyWith(
                color: CustomColors.tertiaryText
              ),
            ),
            Text(
              postDate,
              style: Theme.of(context).textTheme.overline,
            ),
          ],
        )
      ],
    );
  }
}
