import 'package:flutter/material.dart';

import 'podcast_title.dart';

class PodcastPreviewBody extends StatelessWidget {
  const PodcastPreviewBody({
    @required this.episodeTitle,
    @required this.podcastName,
    Key key,
  }) : super(key: key);

  final String episodeTitle;
  final String podcastName;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PodcastTitle(episodeTitle: episodeTitle),
            const SizedBox(height: 16),
            Text(
              podcastName,
              style: Theme.of(context).textTheme.bodyText2,
            )
          ],
        ),
      ),
    );
  }
}