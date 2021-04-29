import 'package:dev_flutter/services/api.dart';
import 'package:dev_flutter/shared_components/app_skeleton.dart';
import 'package:dev_flutter/shared_components/infinite_scroll_feed.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'components/fake_video_post_preview.dart';
import 'components/video_post_preview.dart';

class VideoFeedScreen extends StatelessWidget {
  VideoFeedScreen({
    Key? key,
  }) : super(key: key);

  final API api = GetIt.I.get<API>();

  @override
  Widget build(BuildContext context) {
    return AppSkeleton(
      title: 'Video',
      child: InfiniteScrollFeed(
        element: _videoPostPreviewBuilder,
        fakeElement: const FakeVideoPostPreview(),
        fakeItemsCount: 3,
        request: _fetchVideos,
      ),
    );
  }

  Widget _videoPostPreviewBuilder(context, dynamic video, _) =>
      VideoPostPreview(
          title: video.title,
          duration: video.duration,
          author: video.author,
          imageUrl: video.videoPrevieImageUrl);

  Future<dynamic> _fetchVideos(int pageNumber) async =>
      api.video.getByPage(pageNumber);
}
