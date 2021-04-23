import 'package:dev_flutter/consts/colors.dart';
import 'package:flutter/material.dart';

class ListingFooter extends StatelessWidget {
  const ListingFooter({
    required this.profileImage,
    required this.username,
    required this.category,
    Key? key,
  }) : super(key: key);

  final String profileImage;
  final String username;
  final String category;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      CircleAvatar(backgroundImage: NetworkImage(profileImage), radius: 16),
      const SizedBox(width: 8),
      Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(username,
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(color: CustomColors.primaryText)),
            Text(category, style: Theme.of(context).textTheme.overline)
          ])
    ]);
  }
}
