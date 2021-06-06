import 'package:dev_flutter/models/listing_preview_model.dart';
import 'package:dev_flutter/services/api.dart';
import 'package:dev_flutter/shared_components/app_skeleton.dart';
import 'package:dev_flutter/shared_components/infinite_scroll_feed.dart';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'components/listing_preview.dart';

class ListingFeedScreen extends StatelessWidget {
  ListingFeedScreen({
    Key? key,
  }) : super(key: key);

  final API api = GetIt.I.get<API>();

  @override
  Widget build(BuildContext context) {
    return AppSkeleton(
        title: 'Listings',
        child: InfiniteScrollFeed(
            request: _fetchListings, elementBuilder: _listingPreviewBuilder));
  }

  Future<List<ListingPreviewModel>> _fetchListings(int pageNumber) =>
      api.listing.getByPage(pageNumber);

  Widget _listingPreviewBuilder(context, dynamic listing, _) => ListingPreview(
      title: listing.title,
      data: listing.processedHtml,
      category: listing.category,
      tags: listing.tags,
      profileImage: listing.profileImage,
      username: listing.username);
}
