import 'package:dev_flutter/bloc/feed/feed_bloc.dart';
import 'package:dev_flutter/bloc/locale/locale_bloc.dart';
import 'package:dev_flutter/bloc/post/post_bloc.dart';
import 'package:dev_flutter/consts/app_routes.dart';
import 'package:dev_flutter/services/api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'screens/listing_feed/listing_feed_screen.dart';
import 'screens/podcast_feed/podcast_feed_screen.dart';
import 'screens/post/post_screen.dart';
import 'screens/post_feed/post_feed_screen.dart';
import 'screens/tag_feed/tag_feed_screen.dart';
import 'screens/video_feed/video_feed_screen.dart';
import 'theme.dart';

void main() {
  final api = API(url: 'https://dev.to/api');
  final blocProvider = MultiBlocProvider(
    providers: [
      BlocProvider<FeedBloc>(create: (ctx) => FeedBloc(api)),
      BlocProvider<PostBloc>(create: (ctx) => PostBloc(api)),
      BlocProvider<LocaleBloc>(create: (ctx) => LocaleBloc()),
    ],
    child: const MyApp(),
  );

  runApp(blocProvider);
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocaleBloc, LocaleState>(
        builder: (ctx, state) => MaterialApp(
              title: 'DEV Flutter',
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              theme: CustomTheme.theme,
              initialRoute: AppRoutes.postFeedPage,
              locale: state.currentLocale,
              routes: {
                AppRoutes.postFeedPage: (context) => const PostFeedScreen(),
                AppRoutes.listingFeedPage: (context) =>
                    const ListingFeedScreen(),
                AppRoutes.podcastFeedPage: (context) =>
                    const PodcastFeedScreen(),
                AppRoutes.videoFeedPage: (context) => const VideoFeedScreen(),
                AppRoutes.tagFeedPage: (context) => const TagFeedScreen(),
                AppRoutes.postPage: (context) => const PostScreen()
              },
            ));
  }
}
