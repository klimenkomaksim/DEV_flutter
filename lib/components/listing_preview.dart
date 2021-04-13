import 'package:dev_flutter/theme/borders.dart';
import 'package:dev_flutter/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

import 'listing_footer.dart';
import 'tag.dart';

class ListingPreview extends StatelessWidget {
  const ListingPreview({
    required this.title,
    required this.data,
    required this.category,
    required this.tags,
    required this.username,
    required this.profileImage,
    Key? key,
  }) : super(key: key);

  final String? title;
  final String? data;
  final String? category;
  final List<String>? tags;
  final String? username;
  final String? profileImage;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.white, border: CustomBorder.horizontalBorder),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(title!,
              style: Theme.of(context)
                  .textTheme
                  .headline2!
                  .copyWith(fontWeight: FontWeight.w700, height: 1.25)),
          const SizedBox(height: 4),
          Wrap(children: tags!.map((tag) => Tag(tag: tag)).toList()),
          const SizedBox(height: 12),
          _ListingBody(data: data!),
          const SizedBox(height: 16),
          ListingFooter(
              profileImage: profileImage!,
              username: username!,
              category: category!)
        ]));
  }
}

class _ListingBody extends StatelessWidget {
  const _ListingBody({
    required this.data,
    Key? key,
  }) : super(key: key);

  final String? data;

  @override
  Widget build(BuildContext context) {
    return HtmlWidget(
      data!,
      textStyle: Theme.of(context)
          .textTheme
          .bodyText1!
          .copyWith(color: CustomColors.primaryText),
    );
  }
}
