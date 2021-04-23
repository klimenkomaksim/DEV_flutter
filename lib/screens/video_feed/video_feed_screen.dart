import 'package:dev_flutter/shared_components/app_skeleton.dart';
import 'package:dev_flutter/temporary/video_data.dart';
import 'package:flutter/material.dart';

import 'components/video_post_preview.dart';

class VideoFeedScreen extends StatelessWidget {
  const VideoFeedScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppSkeleton(
        title: 'Video',
        child: ListView(
            children: videoData
                .map((video) => VideoPostPreview(
                    title: video.title,
                    duration: video.duration,
                    author: video.author,
                    imageUrl: video.videoPrevieImageUrl))
                .toList()));
  }
}