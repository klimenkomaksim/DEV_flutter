class User {
  String? _name;
  String? _profileImage90;

  User({required String name, required String profileImage90}) {
    _name = name;
    _profileImage90 = profileImage90;
  }

  String? get username => _name;
  String? get profileImage => _profileImage90;

  User.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
    _profileImage90 = json['profile_image_90'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['name'] = _name;
    data['profile_image_90'] = _profileImage90;

    return data;
  }
}
