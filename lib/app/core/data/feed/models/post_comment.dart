class PostComment {
  late String id;
  late String userId;
  late String userPhoto;
  late String comment;
  late DateTime createdAt;
  late DateTime updatedAt;

  PostComment({
    required this.id,
    required this.userId,
    required this.userPhoto,
    required this.comment,
    required this.createdAt,
    required this.updatedAt,
  });

  PostComment.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['userId'];
    userPhoto = json['userPhoto'];
    comment = json['comment'];
    createdAt = DateTime.parse(json['createdAt']);
    updatedAt = DateTime.parse(json['updatedAt']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['userId'] = userId;
    data['userPhoto'] = userPhoto;
    data['comment'] = comment;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    return data;
  }
}
