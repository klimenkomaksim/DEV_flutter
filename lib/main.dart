import 'package:dev_flutter/consts/app_routes.dart';
import 'package:dev_flutter/services/api.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'screens/listing_feed/listing_feed_screen.dart';
import 'screens/podcast_feed/podcast_feed_screen.dart';
import 'screens/post/post_screen.dart';
import 'screens/post_feed/post_feed_screen.dart';
import 'screens/tag_feed/tag_feed_screen.dart';
import 'screens/video_feed/video_feed_screen.dart';
import 'theme.dart';

void main() {
  GetIt.I.registerSingleton(API(url: 'dev.to'));
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
        AppRoutes.postFeedPage: (context) => PostFeedScreen(),
        AppRoutes.listingFeedPage: (context) => ListingFeedScreen(),
        AppRoutes.podcastFeedPage: (context) => PodcastFeedScreen(),
        AppRoutes.videoFeedPage: (context) => VideoFeedScreen(),
        AppRoutes.tagFeedPage: (context) => TagFeedScreen(),
        AppRoutes.postPage: (context) => const PostScreen()
      },
    );
  }
}
