import 'package:flutter/material.dart';

class PodcastImage extends StatelessWidget {
  const PodcastImage({
    required this.url,
    Key? key,
  }) : super(key: key);

  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 16, top: 16),
        child: CircleAvatar(radius: 22, backgroundImage: NetworkImage(url)));
  }
}
