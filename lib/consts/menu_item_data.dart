import 'package:dev_flutter/consts/app_routes.dart';

class MenyItemData {
  final String name;
  final String svgName;
  final String routeName;

  const MenyItemData(
      {required this.name, required this.svgName, required this.routeName});

  String get svgPath => 'images/$svgName.svg';
}

const menuItemsData = [
  MenyItemData(
      name: 'Home', svgName: 'home', routeName: AppRoutes.postFeedPage),
  MenyItemData(
      name: 'Litstings',
      svgName: 'listings',
      routeName: AppRoutes.listingFeedPage),
  MenyItemData(
      name: 'Podcasts',
      svgName: 'podcast',
      routeName: AppRoutes.podcastFeedPage),
  MenyItemData(
      name: 'Video', svgName: 'video', routeName: AppRoutes.videoFeedPage),
  MenyItemData(name: 'Tags', svgName: 'tag', routeName: AppRoutes.tagFeedPage),
];
