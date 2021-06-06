import 'package:dev_flutter/bloc/main_bloc.dart';
import 'package:dev_flutter/shared_components/app_skeleton.dart';
import 'package:dev_flutter/shared_components/infinite_scroll_feed.dart';
import 'package:flutter/material.dart';

import 'components/fake_video_post_preview.dart';
import 'components/video_post_preview.dart';

class VideoFeedScreen extends StatelessWidget {
  const VideoFeedScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppSkeleton(
      title: 'Video',
      child: InfiniteScrollFeed(
        elementBuilder: _videoPostPreviewBuilder,
        fakeElement: const FakeVideoPostPreview(),
        fakeItemsCount: 3,
        eventCreator: _getRequestEvent,
      ),
    );
  }

  Widget _videoPostPreviewBuilder(context, dynamic video, _) =>
      VideoPostPreview(
          title: video.title,
          duration: video.duration,
          author: video.author,
          imageUrl: video.videoPrevieImageUrl);

  BlocEvent _getRequestEvent(int pageNumber) => GetVideos(pageNumber);
}
