import 'package:dev_flutter/consts/borders.dart';
import 'package:flutter/material.dart';

import 'podcast_image.dart';
import 'podcast_preview_body.dart';

class PodcastPreview extends StatelessWidget {
  const PodcastPreview({
    required this.episodeTitle,
    required this.imageUrl,
    required this.podcastName,
    Key? key,
  }) : super(key: key);

  final String episodeTitle;
  final String podcastName;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white, border: CustomBorder.horizontalBorder),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          if (imageUrl.isNotEmpty) PodcastImage(url: imageUrl),
          Expanded(
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
                  child: PodcastPreviewBody(
                      episodeTitle: episodeTitle, podcastName: podcastName)))
        ]));
  }
}
