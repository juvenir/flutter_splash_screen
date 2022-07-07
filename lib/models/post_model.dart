class Post {
  Post({
    required this.id,
    required this.title,
    required this.isActive,
    required this.type,
  });
  late final int id;
  late final String title;
  late final int isActive;
  late final int type;

  Post.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    isActive = json['is_active'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['title'] = title;
    _data['is_active'] = isActive;
    _data['type'] = type;
    return _data;
  }
}
