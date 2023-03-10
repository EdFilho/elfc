import 'package:faker/faker.dart';

class PostComment {
  late String id;
  late String userId;
  late String userPhoto;
  late String userName;
  late String comment;
  late DateTime createdAt;
  late DateTime updatedAt;

  PostComment({
    required this.id,
    required this.userId,
    required this.userPhoto,
    required this.userName,
    required this.comment,
    required this.createdAt,
    required this.updatedAt,
  });

  PostComment.fromJson(Map<String, dynamic> json) {
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

class PostCommentGenerator {
  final Faker _faker;

  PostCommentGenerator(this._faker);

  PostComment generatePostComment() {
    final id = _faker.guid.guid();
    final userId = _faker.guid.guid();
    final userName = _faker.person.name();
    final comment = _faker.lorem.sentence();
    final userProfileImage = _faker.image.image();
    final createdAt = _faker.date.dateTime();
    final updatedAt = _faker.date.dateTime();

    return PostComment(
      id: id,
      userId: userId,
      userPhoto: userProfileImage,
      userName: userName,
      comment: comment,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
