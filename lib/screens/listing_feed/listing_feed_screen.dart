import 'package:dev_flutter/bloc/article/article_bloc.dart';
import 'package:dev_flutter/shared_components/app_skeleton.dart';
import 'package:dev_flutter/shared_components/infinite_scroll_feed.dart';

import 'package:flutter/material.dart';

import 'components/listing_preview.dart';

class ListingFeedScreen extends StatelessWidget {
  const ListingFeedScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppSkeleton(
        title: 'Listings',
        child: InfiniteScrollFeed(
            eventCreator: _getRequestEvent,
            elementBuilder: _listingPreviewBuilder));
  }

  BlocEvent _getRequestEvent(int pageNumber) => GetListings(pageNumber);

  Widget _listingPreviewBuilder(context, dynamic listing, _) => ListingPreview(
      title: listing.title,
      data: listing.processedHtml,
      category: listing.category,
      tags: listing.tags,
      profileImage: listing.profileImage,
      username: listing.username);
}
