import 'package:dev_flutter/consts/borders.dart';
import 'package:flutter/material.dart';

import 'video_preview.dart';

class VideoPostPreview extends StatelessWidget {
  const VideoPostPreview({
    required this.title,
    required this.duration,
    required this.author,
    required this.imageUrl,
    Key? key,
  }) : super(key: key);

  final String title;
  final String duration;
  final String author;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 6, right: 6, top: 8),
        padding: const EdgeInsets.only(bottom: 8),
        decoration:
            BoxDecoration(color: Colors.white, border: CustomBorder.allBorder),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          VideoPreview(imageUrl: imageUrl, duration: duration),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
              child: Text(title, style: Theme.of(context).textTheme.headline5)),
          if (author.isNotEmpty)
            Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                child:
                    Text(author, style: Theme.of(context).textTheme.bodyText1))
        ]));
  }
}
