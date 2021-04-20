import 'package:json_annotation/json_annotation.dart';

import 'user_model.dart';

part 'listing_preview_model.g.dart';

@JsonSerializable()
class ListingPreviewModel {
  final int id;
  final String title;
  final String category;
  @JsonKey(name: 'processed_html')
  final String processedHtml;
  @JsonKey(name: 'listing_category_id')
  final int? listingCategoryId;
  final List<String> tags;
  final User? user;

  ListingPreviewModel({
    required this.id,
    required this.title,
    required this.category,
    required this.processedHtml,
    this.listingCategoryId,
    this.user,
    List<String>? tags,
  }) : tags = tags ?? [];

  factory ListingPreviewModel.fromJson(Map<String, dynamic> json) =>
      _$ListingPreviewModelFromJson(json);

  Map<String, dynamic> toJson() => _$ListingPreviewModelToJson(this);

  String get username => user?.username ?? '';
  String get profileImage => user?.profileImage ?? '';
}
