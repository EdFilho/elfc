class Comment {
  late String id;
  late String userId;
  late String userPhoto;
  late String userName;
  late String comment;
  late DateTime createdAt;
  late DateTime updatedAt;

  Comment({
    required this.id,
    required this.userId,
    required this.userPhoto,
    required this.userName,
    required this.comment,
    required this.createdAt,
    required this.updatedAt,
  });

  Comment.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['userId'];
    userPhoto = json['userPhoto'];
    userName = json['userName'];
    comment = json['comment'];
    createdAt = DateTime.parse(json['createdAt']);
    updatedAt = DateTime.parse(json['updatedAt']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['userId'] = userId;
    data['userPhoto'] = userPhoto;
    data['userName'] = userName;
    data['comment'] = comment;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    return data;
  }
}
