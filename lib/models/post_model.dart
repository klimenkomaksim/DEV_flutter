import 'package:dev_flutter/models/post_preview_model.dart';

import 'user_model.dart';

class PostModel extends PostPreviewModel {
  String? _coverImage;
  String? _bodyHtml;
  List<String>? _tags;

  PostModel(
      {required int id,
      required String title,
      required String description,
      required String readablePublishDate,
      required int commentsCount,
      required int publicReactionsCount,
      required String coverImage,
      required List<String> tags,
      required String bodyHtml,
      required User user})
      : super(
            id: id,
            title: title,
            description: description,
            readablePublishDate: readablePublishDate,
            commentsCount: commentsCount,
            publicReactionsCount: publicReactionsCount,
            tagList: tags,
            user: user) {
    _coverImage = coverImage;
    _bodyHtml = bodyHtml;
    _tags = tags;
  }

  String? get coverImage => _coverImage;
  String? get data => _bodyHtml;
  @override
  List<String>? get tags => _tags;

  @override
  PostModel.fromJson(Map<String, dynamic> json) : super.fromJson(json) {
    _coverImage = json['cover_image'];
    _bodyHtml = json['body_html'];
    _tags = json['tags'];
  }

  @override
  Map<String, dynamic> toJson() {
    final postPreviewMap = super.toJson();
    final data = <String, dynamic>{};

    data['cover_image'] = _coverImage;
    data['body_html'] = _bodyHtml;

    return {
      ...postPreviewMap,
      ...data,
    };
  }
}
