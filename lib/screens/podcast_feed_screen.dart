import 'package:dev_flutter/components/app_skeleton.dart';
import 'package:dev_flutter/components/podcast_preview.dart';
import 'package:dev_flutter/temporary/podcast_data.dart';
import 'package:flutter/material.dart';

class PodcastFeedScreen extends StatelessWidget {
  const PodcastFeedScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppSkeleton(
      title: 'Podcast',
      appBody: ListView(
        children: podcastData.map(
          (podcast) => PodcastPreview(
            episodeTitle: podcast['episodeTitle'],
            imageUrl: podcast['imageUrl'],
            podcastName: podcast['podcastName'],
          )
        ).toList(),
      ),
    );
  }
}


