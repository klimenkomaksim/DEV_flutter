import 'package:dev_flutter/consts/app_routes.dart';
import 'package:dev_flutter/screens/post_screen.dart';
import 'package:dev_flutter/theme/theme.dart';
import 'package:flutter/material.dart';

import 'screens/listing_feed_screen.dart';
import 'screens/podcast_feed_screen.dart';
import 'screens/post_feed_screen.dart';
import 'screens/tag_feed_screen.dart';
import 'screens/video_feed_screen.dart';
import 'theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DEV Flutter',
      theme: CustomTheme.theme,
      initialRoute: '/posts',
      routes: {
        AppRoutes.postFeedPage: (context) => const PostFeedScreen(),
        AppRoutes.listingFeedPage: (context) => const ListingFeedScreen(),
        AppRoutes.podcastFeedPage: (context) => const PodcastFeedScreen(),
        AppRoutes.videoFeedPage: (context) => const VideoFeedScreen(),
        AppRoutes.tagFeedPage: (context) => const TagFeedScreen(),
        AppRoutes.postPage: (context) => const PostScreen()
      },
    );
  }
}
