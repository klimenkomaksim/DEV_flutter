import 'package:dev_flutter/theme/theme.dart';
import 'package:flutter/material.dart';

import 'screens/post_feed_screen.dart';
import 'theme/theme.dart';
// import 'screens/video_feed_screen.dart';
// import 'screens/podcast_feed_screen.dart';
// import 'screens/tag_feed_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp (
    {Key key,}
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DEV Flutter',
      theme: CustomTheme.theme,
      home: const PostFeedScreen(),
      // home: const VideoFeedScreen(),
      // home: const PodcastFeedScreen(),
      // home: const TagFeedScreen(),
    );
  }
}
