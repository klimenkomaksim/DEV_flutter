import 'package:dev_flutter/bloc/article/article_bloc.dart';
import 'package:dev_flutter/shared_components/app_skeleton.dart';
import 'package:dev_flutter/shared_components/infinite_scroll_feed.dart';
import 'package:flutter/material.dart';

import 'components/fake_podcast_preview.dart';
import 'components/podcast_preview.dart';

class PodcastFeedScreen extends StatelessWidget {
  const PodcastFeedScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppSkeleton(
        title: 'Podcast',
        child: InfiniteScrollFeed(
            eventCreator: _getRequestEvent,
            fakeElement: const FakePodcastPreview(),
            elementBuilder: _podcastPreviewBuilder,
            fakeItemsCount: 10));
  }

  Widget _podcastPreviewBuilder(context, dynamic podcast, _) => PodcastPreview(
      episodeTitle: podcast.episodeTitle,
      imageUrl: podcast.podcastImageUrl,
      podcastName: podcast.podcastTitle);

  BlocEvent _getRequestEvent(int pageNumber) => GetPodcasts(pageNumber);
}
