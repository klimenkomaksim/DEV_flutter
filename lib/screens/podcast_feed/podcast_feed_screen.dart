import 'package:dev_flutter/shared_components/app_skeleton.dart';
import 'package:dev_flutter/temporary/podcast_data.dart';
import 'package:flutter/material.dart';

import 'components/podcast_preview.dart';

class PodcastFeedScreen extends StatelessWidget {
  const PodcastFeedScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppSkeleton(
        title: 'Podcast',
        child: ListView(
            children: podcastData
                .map((podcast) => PodcastPreview(
                    episodeTitle: podcast.episodeTitle,
                    imageUrl: podcast.podcastImageUrl,
                    podcastName: podcast.podcastTitle))
                .toList()));
  }
}
