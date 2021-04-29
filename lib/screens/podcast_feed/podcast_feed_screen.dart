import 'package:dev_flutter/services/api.dart';
import 'package:dev_flutter/shared_components/app_skeleton.dart';
import 'package:dev_flutter/shared_components/infinite_scroll_feed.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'components/fake_podcast_preview.dart';
import 'components/podcast_preview.dart';

class PodcastFeedScreen extends StatelessWidget {
  PodcastFeedScreen({
    Key? key,
  }) : super(key: key);

  final API api = GetIt.I.get<API>();

  @override
  Widget build(BuildContext context) {
    return AppSkeleton(
        title: 'Podcast',
        child: InfiniteScrollFeed(
            request: _fetchPodcasts,
            fakeElement: const FakePodcastPreview(),
            elementBuilder: _podcastPreviewBuilder,
            fakeItemsCount: 10));
  }

  Widget _podcastPreviewBuilder(context, dynamic podcast, _) => PodcastPreview(
      episodeTitle: podcast.episodeTitle,
      imageUrl: podcast.podcastImageUrl,
      podcastName: podcast.podcastTitle);

  Future<dynamic> _fetchPodcasts(int pageNumber) =>
      api.podcast.getByPage(pageNumber);
}
