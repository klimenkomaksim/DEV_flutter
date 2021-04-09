import 'package:flutter/material.dart';

import 'podacst_label.dart';

class PodcastTitle extends StatelessWidget {
  const PodcastTitle({
    required this.episodeTitle,
    Key? key,
  }) : super(key: key);

  final String? episodeTitle;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        const WidgetSpan(
            baseline: TextBaseline.alphabetic,
            alignment: PlaceholderAlignment.baseline,
            child: PodcastLabel()),
        TextSpan(
            text: episodeTitle, style: Theme.of(context).textTheme.headline3)
      ]),
    );
  }
}
