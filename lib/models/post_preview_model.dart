import 'user_model.dart';

class PostPreviewModel {
  int? _id;
  String? _title;
  String? _description;
  String? _readablePublishDate;
  int? _commentsCount;
  int? _publicReactionsCount;
  List<String>? _tagList;
  User? _user;

  PostPreviewModel(
      {required int id,
      required String title,
      required String description,
      required String readablePublishDate,
      required int commentsCount,
      required int publicReactionsCount,
      required List<String> tagList,
      required User user}) {
    _id = id;
    _title = title;
    _description = description;
    _readablePublishDate = readablePublishDate;
    _commentsCount = commentsCount;
    _publicReactionsCount = publicReactionsCount;
    _tagList = tagList;
    _user = user;
  }

  int? get id => _id;
  String? get title => _title;
  String? get description => _description;
  String? get publishDate => _readablePublishDate;
  int? get commentsCount => _commentsCount;
  int? get likesCount => _publicReactionsCount;
  List<String>? get tags => _tagList;
  String? get username => _user?.username;
  String? get profileImage => _user?.profileImage;

  PostPreviewModel.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _title = json['title'];
    _description = json['description'];
    _readablePublishDate = json['readable_publish_date'];
    _commentsCount = json['comments_count'];
    _publicReactionsCount = json['public_reactions_count'];
    _tagList = json['tag_list']?.cast<String>();
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['id'] = _id;
    data['title'] = _title;
    data['description'] = _description;
    data['readable_publish_date'] = _readablePublishDate;
    data['comments_count'] = _commentsCount;
    data['public_reactions_count'] = _publicReactionsCount;
    data['tag_list'] = _tagList;
    data['user'] = _user?.toJson();

    return data;
  }
}
