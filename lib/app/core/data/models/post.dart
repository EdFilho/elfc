import 'package:faker/faker.dart';

import 'post_comment.dart';

class Post {
  late String id;
  late String userId;
  late String userName;
  late String userProfileImage;
  late String image;
  late String description;
  late bool liked;
  late List<String>? likes;
  late List<PostComment>? comments;
  late DateTime createdAt;
  late DateTime updatedAt;

  Post({
    required this.id,
    required this.userId,
    required this.userName,
    required this.userProfileImage,
    required this.image,
    required this.description,
    this.liked = false,
    this.likes,
    this.comments,
    required this.createdAt,
    required this.updatedAt,
  });

  Post.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['userId'];
    userName = json['userName'];
    userProfileImage = json['userProfileImage'];
    image = json['image'];
    description = json['description'];
    liked = json['liked'];
    if (json['likes'] != null) {
      likes = json['likes'].cast<String>();
    }
    if (json['comments'] != null) {
      comments = <PostComment>[];
      json['comments'].forEach((item) {
        comments!.add(PostComment.fromJson(item));
      });
    }
    createdAt = DateTime.parse(json['createdAt']);
    updatedAt = DateTime.parse(json['updatedAt']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['userId'] = userId;
    data['userName'] = userName;
    data['userProfileImage'] = userProfileImage;
    data['image'] = image;
    data['description'] = description;
    data['liked'] = liked;
    if (likes != null) {
      data['likes'] = likes;
    }
    if (comments != null) {
      data['comments'] = comments!.map((item) => item.toJson()).toList();
    }
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    return data;
  }
}

class PostGenerator {
  final Faker _faker;

  PostGenerator(this._faker);

  List<Post> generatePosts(int count) {
    return List.generate(count, (index) {
      final id = _faker.guid.guid();
      final userId = _faker.guid.guid();
      final userName = _faker.person.name();
      final userProfileImage = _faker.image.image(
        random: true,
        keywords: ["fight", "fighter"],
      );
      final image = _faker.image.image(
        random: true,
        keywords: ["boxe", "kick boxing", "fighter"],
      );
      final description = _faker.lorem.sentence();
      final liked = _faker.randomGenerator.boolean();
      final likes = List.generate(
        _faker.randomGenerator.integer(5),
        (_) => _faker.person.name(),
      );
      final comments = List.generate(_faker.randomGenerator.integer(5),
          (_) => PostCommentGenerator(_faker).generatePostComment());
      final createdAt = _faker.date.dateTime();
      final updatedAt = _faker.date.dateTime();

      return Post(
        id: id,
        userId: userId,
        userName: userName,
        userProfileImage: userProfileImage,
        image: image,
        liked: liked,
        description: description,
        likes: likes,
        comments: comments,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
    });
  }
}
