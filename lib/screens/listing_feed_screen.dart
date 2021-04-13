import 'package:dev_flutter/components/app_skeleton.dart';
import 'package:dev_flutter/components/listing_preview.dart';
import 'package:dev_flutter/temporary/listings_data.dart';

import 'package:flutter/material.dart';

class ListingFeedScreen extends StatelessWidget {
  const ListingFeedScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppSkeleton(
      title: 'Listings',
      child: ListView(
          children: listingsData
              .map((listing) => ListingPreview(
                    title: listing.title,
                    data: listing.processedHtml,
                    category: listing.category,
                    tags: listing.tags,
                    profileImage: listing.profileImage,
                    username: listing.username,
                  ))
              .toList()),
    );
  }
}
