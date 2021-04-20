import 'package:json_annotation/json_annotation.dart';

import 'post_preview_model.dart';
import 'user_model.dart';

part 'post_model.g.dart';

@JsonSerializable()
class PostModel extends PostPreviewModel {
  @JsonKey(name: 'cover_image')
  final String coverImage;
  @JsonKey(name: 'body_html')
  final String bodyHtml;

  PostModel(
      {required this.coverImage,
      required this.bodyHtml,
      required int id,
      required String title,
      required String publishDate,
      int? comments,
      int? publicReactionCount,
      List<String>? tags,
      User? user})
      : super(
            id: id,
            title: title,
            publishDate: publishDate,
            comments: comments,
            publicReactionCount: publicReactionCount,
            tags: tags,
            user: user);

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PostModelToJson(this);

  String get data => bodyHtml;
}
