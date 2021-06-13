import 'package:dev_flutter/bloc/feed/feed_bloc.dart';
import 'package:dev_flutter/shared_components/app_skeleton.dart';
import 'package:dev_flutter/shared_components/infinite_scroll_feed.dart';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'components/listing_preview.dart';

class ListingFeedScreen extends StatelessWidget {
  const ListingFeedScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppSkeleton(
        title: AppLocalizations.of(context)!.listings,
        child: InfiniteScrollFeed(
            eventCreator: _getRequestEvent,
            elementBuilder: _listingPreviewBuilder));
  }

  FeedEvent _getRequestEvent(int pageNumber) => GetListings(pageNumber);

  Widget _listingPreviewBuilder(context, dynamic listing, _) => ListingPreview(
      title: listing.title,
      data: listing.processedHtml,
      category: listing.category,
      tags: listing.tags,
      profileImage: listing.profileImage,
      username: listing.username);
}
