import 'user_model.dart';

class ListingPreviewModel {
  int? _id;
  String? _title;
  String? _category;
  String? _processedHtml;
  int? _listingCategoryId;
  List<String>? _tags;
  User? _user;

  ListingPreviewModel(
      {required int id,
      required String title,
      required String category,
      required String processedHtml,
      required int listingCategoryId,
      required List<String> tags,
      required User user}) {
    _id = id;
    _title = title;
    _category = category;
    _processedHtml = processedHtml;
    _listingCategoryId = listingCategoryId;
    _tags = tags;
    _user = user;
  }

  int? get id => _id;
  String? get title => _title;
  String? get category => _category;
  String? get processedHtml => _processedHtml;
  int? get listingCategoryId => _listingCategoryId;
  List<String>? get tags => _tags;
  String? get username => _user?.username;
  String? get profileImage => _user?.profileImage;

  ListingPreviewModel.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _title = json['title'];
    _category = json['category'];
    _processedHtml = json['processed_html'];
    _listingCategoryId = json['listing_category_id'];
    _tags = json['tags'].cast<String>();
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = _id;
    data['title'] = _title;
    data['category'] = _category;
    data['processed_html'] = _processedHtml;
    data['listing_category_id'] = _listingCategoryId;
    data['tags'] = _tags;
    data['user'] = _user?.toJson();

    return data;
  }
}
