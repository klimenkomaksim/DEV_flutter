import 'package:dev_flutter/consts/app_routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MenyItemData {
  final String name;
  final String svgName;
  final String routeName;

  const MenyItemData({
    required this.name,
    required this.svgName,
    required this.routeName,
  });

  String get svgPath => 'images/$svgName.svg';
}

List<MenyItemData> getMenuItemsData(AppLocalizations l10n) {
  return [
    MenyItemData(
        name: l10n.home, svgName: 'home', routeName: AppRoutes.postFeedPage),
    MenyItemData(
        name: l10n.listings,
        svgName: 'listings',
        routeName: AppRoutes.listingFeedPage),
    MenyItemData(
        name: l10n.podcasts,
        svgName: 'podcast',
        routeName: AppRoutes.podcastFeedPage),
    MenyItemData(
        name: l10n.video, svgName: 'video', routeName: AppRoutes.videoFeedPage),
    MenyItemData(
        name: l10n.tags, svgName: 'tag', routeName: AppRoutes.tagFeedPage),
  ];
}
